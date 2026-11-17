.class public Lcom/fusepowered/as/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipToPx(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static convertPointToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 53
    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPxToDip(Landroid/content/Context;I)I

    move-result v0

    .line 54
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPxToDip(Landroid/content/Context;I)I

    move-result v1

    .line 55
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static convertPxToDip(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    .line 43
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int v0, v0

    return v0
.end method

.method public static convertRectToDip(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 65
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPxToDip(Landroid/content/Context;I)I

    move-result v0

    .line 66
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPxToDip(Landroid/content/Context;I)I

    move-result v1

    .line 67
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p0, v2}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPxToDip(Landroid/content/Context;I)I

    move-result v2

    .line 68
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v3}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPxToDip(Landroid/content/Context;I)I

    move-result v3

    .line 69
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static getActivitySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 81
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 82
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v1

    .line 84
    invoke-static {p0}, Lcom/fusepowered/as/utils/DeviceInfo;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0
.end method

.method public static getViewSize(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v0, v6

    aget v5, v0, v7

    aget v6, v0, v6

    add-int/2addr v1, v6

    aget v0, v0, v7

    add-int/2addr v0, v2

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 94
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
