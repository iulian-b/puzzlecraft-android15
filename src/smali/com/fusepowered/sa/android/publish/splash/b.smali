.class public Lcom/fusepowered/sa/android/publish/splash/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/splash/b$1;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/b$1;->a:[I

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->g(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->f(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->e(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->d(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->c(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->b(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x52

    const/16 v5, 0x3d

    const/4 v4, 0x6

    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->h(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1

    :array_0
    .array-data 4
        -0xdc8366
        -0x782e22
    .end array-data
.end method

.method private static c(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 5

    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->h(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    const/16 v0, 0x2f

    const/16 v2, 0x35

    const/16 v3, 0x3f

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x33

    const/16 v3, 0xb5

    const/16 v4, 0xe5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x7a

    const/16 v3, 0x82

    const/16 v4, 0x8b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1
.end method

.method private static d(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xff

    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->h(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xc6

    const/16 v3, 0x97

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1

    nop

    :array_0
    .array-data 4
        -0x168d8
        -0xa000
    .end array-data
.end method

.method private static e(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x99

    const/16 v4, 0x33

    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->h(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1

    nop

    :array_0
    .array-data 4
        -0x3b3b3c
        -0x1
    .end array-data
.end method

.method private static f(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x33

    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->h(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xa2

    const/16 v3, 0xac

    const/16 v4, 0xaf

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1

    nop

    :array_0
    .array-data 4
        -0xe0e0f
        -0x5c2b1b
    .end array-data
.end method

.method private static g(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xd2

    const/16 v4, 0xff

    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/b;->h(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xd0

    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1

    nop

    :array_0
    .array-data 4
        -0xf99356
        -0xe5551d
        -0xf99356
    .end array-data
.end method

.method private static h(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 14

    const/16 v13, 0x64

    const/4 v12, 0x3

    const/16 v11, 0xe

    const/4 v10, -0x2

    const/4 v9, 0x0

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x1c

    invoke-static {p0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v3

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    const/16 v0, 0x4b

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    const/16 v0, 0x82

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v9, v9, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "Roboto-Regular.ttf"

    invoke-static {p0, v3}, Lcom/fusepowered/sa/android/publish/f/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setId(I)V

    const/4 v3, 0x1

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-virtual {v0, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v3, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0x65

    invoke-virtual {v3, v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v9, v9, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v9, v9, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {v9, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const-string v2, "loading.html"

    invoke-static {p0, v2}, Lcom/fusepowered/sa/android/publish/f/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0xd0

    const/16 v2, 0xd2

    const/16 v3, 0xd2

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x66

    invoke-virtual {v1, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4

    :cond_0
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v3

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v13}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    goto/16 :goto_0
.end method
