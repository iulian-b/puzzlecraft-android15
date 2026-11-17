.class public Lcom/fusepowered/vast/activity/CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleDrawable.java"


# static fields
.field private static final STROKE_WIDTH:F = 2.0f


# instance fields
.field private oval:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private startAngle:F

.field private sweepAngle:F

.field private totalTime:J


# direct methods
.method public constructor <init>(FF)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "radius"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    div-float v1, p1, v5

    sub-float/2addr v1, p2

    div-float v2, p1, v5

    sub-float/2addr v2, p2

    div-float v3, p1, v5

    add-float/2addr v3, p2

    div-float v4, p1, v5

    add-float/2addr v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->oval:Landroid/graphics/RectF;

    .line 26
    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->startAngle:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->sweepAngle:F

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->paint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    iget-object v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/fusepowered/vast/util/Assets;->convertToDps(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->oval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->startAngle:F

    iget v3, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->sweepAngle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 54
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 58
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->sweepAngle:F

    .line 41
    return-void
.end method

.method public setTimer(J)V
    .locals 1
    .param p1, "totalTime"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->totalTime:J

    .line 37
    return-void
.end method

.method public update(J)V
    .locals 5
    .param p1, "elapsedTime"    # J

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 44
    long-to-float v0, p1

    iget-wide v2, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->totalTime:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    sub-float v0, v4, v0

    iput v0, p0, Lcom/fusepowered/vast/activity/CircleDrawable;->sweepAngle:F

    .line 45
    return-void
.end method
