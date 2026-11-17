.class public Lcom/fusepowered/sa/android/publish/f/j;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/f/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/f/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/f/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/f/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/fusepowered/sa/android/publish/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0, v4, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Lcom/fusepowered/sa/android/publish/f/j;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setRating(F)V
    .locals 6

    const/4 v0, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/f/j;->removeAllViews()V

    mul-float v2, p1, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v4, v3

    sub-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    rsub-int/lit8 v4, v3, 0x5

    if-eqz v2, :cond_1

    :goto_1
    sub-int/2addr v4, v0

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_2

    const-string v5, "filled_star.png"

    invoke-direct {p0, v5}, Lcom/fusepowered/sa/android/publish/f/j;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, "half_star.png"

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/f/j;->a(Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-ge v1, v4, :cond_4

    const-string v0, "empty_star.png"

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/f/j;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
