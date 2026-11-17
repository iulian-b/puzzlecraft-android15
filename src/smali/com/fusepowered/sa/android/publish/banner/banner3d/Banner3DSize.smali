.class public Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v2, 0x0

    const-string v0, "============== Optimize Size =========="

    invoke-static {v9, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize;->b(Landroid/content/Context;Landroid/view/ViewParent;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;)Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v3

    invoke-static {}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->values()[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v7

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v7

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v8

    if-gt v7, v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BannerSize ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v0

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v6

    invoke-virtual {p2, v0, v6}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->a(II)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p2, v2, v2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->a(II)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============== Optimize Size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] =========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/view/ViewParent;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;)Lcom/fusepowered/sa/android/publish/banner/a;
    .locals 6

    const/4 v5, 0x3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->d()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const-string v0, "=============== set Application Size ==========="

    invoke-static {v5, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v0, "Context is Activity"

    invoke-static {v5, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    :try_start_0
    check-cast p1, Landroid/view/View;

    instance-of v0, p1, Lcom/fusepowered/sa/android/publish/banner/Banner;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const-string v3, "Parent is instance of Wrapper Banner"

    invoke-static {v0, v3}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============ exit Application Size ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] ========="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/a;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v1}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const-string v0, "Exception occoured"

    invoke-static {v5, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Context not Activity, get max win size"

    invoke-static {v5, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-static {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto/16 :goto_0
.end method
