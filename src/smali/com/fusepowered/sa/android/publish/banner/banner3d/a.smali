.class public Lcom/fusepowered/sa/android/publish/banner/banner3d/a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/banner/banner3d/a$2;,
        Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/fusepowered/sa/android/publish/f/j;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a()V

    return-void
.end method

.method private a()V
    .locals 14

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->getTemplateBySize()Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getItemGradientTop()I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getItemGradientBottom()I

    move-result v6

    aput v6, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    const/4 v4, 0x5

    invoke-static {v0, v4}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {v0, v5}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v0, v6}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    const/16 v7, 0x14

    invoke-static {v0, v7}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0x54

    invoke-static {v0, v8}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    const/16 v8, 0x5a

    invoke-static {v0, v8}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v4, v9, v4, v10}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setPadding(IIII)V

    invoke-virtual {p0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setTag(Ljava/lang/Object;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setId(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xf

    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setId(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getItemTitleTextColor()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v9, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$2;->a:[I

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getItemTitleTextDecoration()Ljava/util/Set;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/widget/TextView;Ljava/util/Set;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getItemDescriptionTextColor()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLines(I)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Lcom/fusepowered/sa/android/publish/f/j;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/fusepowered/sa/android/publish/f/j;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->d:Lcom/fusepowered/sa/android/publish/f/j;

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->d:Lcom/fusepowered/sa/android/publish/f/j;

    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Lcom/fusepowered/sa/android/publish/f/j;->setId(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v8, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$2;->a:[I

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v4, v3, v6, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->d:Lcom/fusepowered/sa/android/publish/f/j;

    invoke-virtual {v2, v4}, Lcom/fusepowered/sa/android/publish/f/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$2;->a:[I

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    :goto_2
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setButtonText(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v3, -0x3fc00000    # -3.0f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, -0x89898a

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$1;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, p0, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/a;Landroid/graphics/drawable/shapes/Shape;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$2;->a:[I

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :goto_3
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->d:Lcom/fusepowered/sa/android/publish/f/j;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->addView(Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/high16 v10, 0x41880000    # 17.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v10, v9

    const-wide v12, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-static {v2, v9}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :pswitch_1
    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/high16 v10, 0x41880000    # 17.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v10, v9

    const-wide v12, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-static {v2, v9}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v8, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v2, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x8

    const/4 v8, 0x1

    invoke-virtual {v4, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v10, v9

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-static {v8, v9}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_2

    :pswitch_6
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    :pswitch_7
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v2, v7, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :pswitch_9
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/16 v0, 0x37

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v1, v6

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-lez v1, :cond_3

    aget-char v7, v6, v1

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    :goto_3
    return-object v5

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    aput-object p1, v5, v4

    const/4 v0, 0x0

    aput-object v0, v5, v3

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    move v2, v4

    goto :goto_1
.end method

.method private getTemplateBySize()Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;
    .locals 3

    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->b:Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->SMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->SMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->c:Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->MEDIUM:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->MEDIUM:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v2

    if-le v1, v2, :cond_3

    :cond_2
    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->d:Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;

    :cond_3
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->LARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v2

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->LARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v2

    if-le v1, v2, :cond_5

    :cond_4
    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;->e:Lcom/fusepowered/sa/android/publish/banner/banner3d/a$a;

    :cond_5
    return-object v0
.end method


# virtual methods
.method public a(III)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;II)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setButtonText(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->e:Landroid/widget/TextView;

    const-string v1, "DOWNLOAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    const-string v0, ""

    aget-object v3, v1, v5

    if-eqz v3, :cond_0

    aget-object v0, v1, v5

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x6e

    if-lt v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRating(F)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->d:Lcom/fusepowered/sa/android/publish/f/j;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/f/j;->setRating(F)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
