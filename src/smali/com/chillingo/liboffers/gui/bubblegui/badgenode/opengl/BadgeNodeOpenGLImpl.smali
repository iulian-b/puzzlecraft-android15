.class public Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;
.super Ljava/lang/Object;
.source "BadgeNodeOpenGLImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl$1;
    }
.end annotation


# static fields
.field private static final FADE_INTERP_RATE:F = 0.4f

.field private static final LOG_TAG:Ljava/lang/String; = "OffersBadgeNode"

.field private static final POSITION_INTERP_RATE:F = 0.7f

.field private static final SCALE_INTERP_RATE:F = 0.7f


# instance fields
.field private alphaMultiplier:F

.field private badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

.field private badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

.field private context:Landroid/content/Context;

.field private corner:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

.field private fontSize:F

.field private position:Landroid/graphics/PointF;

.field private scale:Landroid/graphics/PointF;

.field private shutdownWhenTargetAlphaMultiplierReached:Z

.field private targetAlphaMultiplier:F

.field private targetPosition:Landroid/graphics/PointF;

.field private targetScale:Landroid/graphics/PointF;

.field private textBackgroundColour:I

.field private textColour:I

.field private textDimensions:Landroid/graphics/Point;

.field private textOffset:Landroid/graphics/PointF;

.field private textScale:F

.field private textString:Ljava/lang/String;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->context:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    .line 72
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 75
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textDimensions:Landroid/graphics/Point;

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textOffset:Landroid/graphics/PointF;

    .line 77
    return-void
.end method

.method private determinePositionFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;)Landroid/graphics/PointF;
    .locals 9
    .param p1, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .prologue
    .line 465
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/chillingo/liboffers/utils/DeviceUtils;->contentScaleFactor(Landroid/content/Context;)F

    move-result v1

    .line 467
    .local v1, "density":F
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    mul-float/2addr v7, v1

    invoke-direct {v2, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 468
    .local v2, "offset":Landroid/graphics/PointF;
    const/4 v5, 0x0

    .line 470
    .local v5, "topTweak":F
    const/4 v4, 0x0

    .line 472
    .local v4, "textScaleOffsetX":F
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/chillingo/liboffers/utils/DeviceUtils;->screenbounds(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v0

    .line 476
    .local v0, "bounds":Landroid/graphics/RectF;
    sget-object v6, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl$1;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersCorner:[I

    invoke-virtual {p1}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 499
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v4

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 504
    .local v3, "pos":Landroid/graphics/PointF;
    :goto_0
    return-object v3

    .line 480
    .end local v3    # "pos":Landroid/graphics/PointF;
    :pswitch_0
    move-object v3, v2

    .line 482
    .restart local v3    # "pos":Landroid/graphics/PointF;
    goto :goto_0

    .line 486
    .end local v3    # "pos":Landroid/graphics/PointF;
    :pswitch_1
    new-instance v3, Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    sub-float/2addr v7, v5

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 488
    .restart local v3    # "pos":Landroid/graphics/PointF;
    goto :goto_0

    .line 492
    .end local v3    # "pos":Landroid/graphics/PointF;
    :pswitch_2
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    sub-float/2addr v7, v5

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 494
    .restart local v3    # "pos":Landroid/graphics/PointF;
    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public allowCollisionChanges()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public alphaMultiplier()F
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->alphaMultiplier:F

    return v0
.end method

.method public collisionEnabled()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public direction()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public draw([F)V
    .locals 2
    .param p1, "projectionMatrix"    # [F

    .prologue
    .line 289
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 290
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->drawWithProjectionMatrix([F)V

    .line 292
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->drawWithProjectionMatrix([F)V

    .line 293
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public hitTest(Landroid/graphics/PointF;)Z
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public hitTest(Landroid/graphics/PointF;F)Z
    .locals 1
    .param p1, "testPoint"    # Landroid/graphics/PointF;
    .param p2, "testRadius"    # F

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public initialise(Ljava/util/HashMap;)V
    .locals 14
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
    .line 81
    .local p1, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "OffersBadgeNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Badge Node Initialisation Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->shutdownWhenTargetAlphaMultiplierReached:Z

    .line 96
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->corner:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 100
    const-string v0, "corner"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "corner"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->corner:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/utils/DeviceUtils;->contentScaleFactor(Landroid/content/Context;)F

    move-result v12

    .line 105
    .local v12, "density":F
    const/high16 v0, 0x41800000    # 16.0f

    mul-float v11, v0, v12

    .line 106
    .local v11, "badgeScale":F
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 107
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetScale:Landroid/graphics/PointF;

    .line 109
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->corner:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->determinePositionFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;)Landroid/graphics/PointF;

    move-result-object v13

    .line 110
    .local v13, "pos":Landroid/graphics/PointF;
    invoke-virtual {p0, v13}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->setPosition(Landroid/graphics/PointF;)V

    .line 111
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetPosition:Landroid/graphics/PointF;

    .line 115
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v12

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textScale:F

    .line 116
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textOffset:Landroid/graphics/PointF;

    .line 118
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x20

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textDimensions:Landroid/graphics/Point;

    .line 122
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->typeface:Landroid/graphics/Typeface;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textColour:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textBackgroundColour:I

    .line 129
    const-string v10, "badge.png"

    .line 130
    .local v10, "badgeImageName":Ljava/lang/String;
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "badge"

    invoke-direct {v0, v1, v2, v10}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 133
    const/high16 v0, 0x42080000    # 34.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->fontSize:F

    .line 135
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textDimensions:Landroid/graphics/Point;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->typeface:Landroid/graphics/Typeface;

    iget v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->fontSize:F

    iget v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textColour:I

    iget v9, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textBackgroundColour:I

    invoke-direct/range {v0 .. v9}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->alphaMultiplier:F

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetAlphaMultiplier:F

    .line 149
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->updateMatrices()V

    .line 150
    return-void
.end method

.method public offerReleased(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->removeFromScene()V

    .line 428
    return-void
.end method

.method public position()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    return-object v0
.end method

.method public processMessage(Ljava/util/HashMap;)V
    .locals 12
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
    .line 168
    .local p1, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "OffersBadgeNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Badge Node received message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 172
    .local v11, "identifier":Ljava/lang/String;
    const-string v0, "update"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 176
    .local v10, "badgeTextString":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 179
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 182
    iput-object v10, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textDimensions:Landroid/graphics/Point;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->typeface:Landroid/graphics/Typeface;

    iget v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->fontSize:F

    iget v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textColour:I

    iget v9, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textBackgroundColour:I

    invoke-direct/range {v0 .. v9}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 195
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetScale:Landroid/graphics/PointF;

    .line 198
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->corner:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->determinePositionFromCorner(Lcom/chillingo/liboffers/OfferSession$OffersCorner;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetPosition:Landroid/graphics/PointF;

    .line 208
    .end local v10    # "badgeTextString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v0, "shutdown"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetAlphaMultiplier:F

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->shutdownWhenTargetAlphaMultiplierReached:Z

    goto :goto_0
.end method

.method public radius()F
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public recreateAssets()V
    .locals 10

    .prologue
    .line 410
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->recreate()V

    .line 413
    :cond_0
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textString:Ljava/lang/String;

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textDimensions:Landroid/graphics/Point;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->typeface:Landroid/graphics/Typeface;

    iget v7, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->fontSize:F

    iget v8, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textColour:I

    iget v9, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textBackgroundColour:I

    invoke-direct/range {v0 .. v9}, Lcom/chillingo/liboffers/gui/renderer/opengl/SpriteTextOpenGLImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Paint$Align;Landroid/graphics/Typeface;FII)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 422
    return-void
.end method

.method public removeFromScene()V
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->getInstance()Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/liboffers/gui/ui/scenegraph/Scenegraph;->removeNode(Lcom/chillingo/liboffers/gui/ui/scenegraph/SceneNode;)V

    .line 432
    return-void
.end method

.method public rotation()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public scale()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    return-object v0
.end method

.method public setAllowCollisionChanges(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 378
    return-void
.end method

.method public setAlphaMultiplier(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 387
    iput p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->alphaMultiplier:F

    .line 390
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->updateAlpha(F)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->updateAlpha(F)V

    .line 395
    :cond_1
    return-void
.end method

.method public setCollisionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 368
    return-void
.end method

.method public setDirection(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "direction"    # Landroid/graphics/PointF;

    .prologue
    .line 328
    return-void
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/PointF;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    .line 308
    return-void
.end method

.method public setRotation(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "rotation"    # Landroid/graphics/PointF;

    .prologue
    .line 353
    return-void
.end method

.method public setScale(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "scale"    # Landroid/graphics/PointF;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 343
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 318
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 157
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->shutdown()V

    .line 162
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .line 164
    :cond_1
    return-void
.end method

.method public speed()F
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public update(DD)V
    .locals 17
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->updateMatrices()V

    .line 214
    move-object/from16 v0, p0

    iget v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetAlphaMultiplier:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->alphaMultiplier:F

    sub-float v2, v14, v15

    .line 215
    .local v2, "alphaMultDiff":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3a83126f    # 0.001f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    .line 219
    move-object/from16 v0, p0

    iget v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->alphaMultiplier:F

    const v15, 0x3ecccccd    # 0.4f

    mul-float/2addr v15, v2

    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float v3, v14, v15

    .line 222
    .local v3, "newAlphaMultipler":F
    const/4 v14, 0x0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 223
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->setAlphaMultiplier(F)V

    .line 233
    .end local v3    # "newAlphaMultipler":F
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    .line 235
    .local v5, "newScale":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetScale:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float v11, v14, v15

    .line 237
    .local v11, "scaleXDiff":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3a83126f    # 0.001f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    const v15, 0x3f333333    # 0.7f

    mul-float/2addr v15, v11

    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float v10, v14, v15

    .line 243
    .local v10, "scaleX":F
    const/4 v14, 0x0

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetScale:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-static {v10, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iput v14, v5, Landroid/graphics/PointF;->x:F

    .line 247
    .end local v10    # "scaleX":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetScale:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v13, v14, v15

    .line 249
    .local v13, "scaleYDiff":F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3a83126f    # 0.001f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    const v15, 0x3f333333    # 0.7f

    mul-float/2addr v15, v13

    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float v12, v14, v15

    .line 255
    .local v12, "scaleY":F
    const/4 v14, 0x0

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetScale:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iput v14, v5, Landroid/graphics/PointF;->y:F

    .line 259
    .end local v12    # "scaleY":F
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->setScale(Landroid/graphics/PointF;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    .line 264
    .local v4, "newPosition":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetPosition:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float v7, v14, v15

    .line 266
    .local v7, "posXDiff":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3a83126f    # 0.001f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    const v15, 0x3f333333    # 0.7f

    mul-float/2addr v15, v7

    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float v6, v14, v15

    .line 270
    .local v6, "posX":F
    iput v6, v4, Landroid/graphics/PointF;->x:F

    .line 273
    .end local v6    # "posX":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->targetPosition:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v9, v14, v15

    .line 275
    .local v9, "posYDiff":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3a83126f    # 0.001f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    const v15, 0x3f333333    # 0.7f

    mul-float/2addr v15, v9

    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 279
    .local v8, "posY":F
    iput v8, v4, Landroid/graphics/PointF;->y:F

    .line 282
    .end local v8    # "posY":F
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->setPosition(Landroid/graphics/PointF;)V

    .line 283
    return-void

    .line 225
    .end local v4    # "newPosition":Landroid/graphics/PointF;
    .end local v5    # "newScale":Landroid/graphics/PointF;
    .end local v7    # "posXDiff":F
    .end local v9    # "posYDiff":F
    .end local v11    # "scaleXDiff":F
    .end local v13    # "scaleYDiff":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->shutdownWhenTargetAlphaMultiplierReached:Z

    if-eqz v14, :cond_0

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->removeFromScene()V

    goto/16 :goto_0
.end method

.method updateMatrices()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 440
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 442
    .local v0, "modelMatrix":[F
    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 444
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4, v1, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 446
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4, v1, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 448
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v1, v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->setMatrix([F)V

    .line 450
    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 452
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textOffset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-static {v0, v4, v1, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 454
    iget v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textScale:F

    iget v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->textScale:F

    invoke-static {v0, v4, v1, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 456
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/badgenode/opengl/BadgeNodeOpenGLImpl;->badgeTextSprite:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v1, v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->setMatrix([F)V

    .line 457
    return-void
.end method

.method public velocity()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method
