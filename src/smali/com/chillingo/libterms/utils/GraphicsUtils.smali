.class public Lcom/chillingo/libterms/utils/GraphicsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStateListDrawableForButtonUsingResource(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I

    .prologue
    const/4 v8, 0x2

    const/16 v5, 0xff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 22
    new-array v2, v7, [I

    const v3, 0x101009c

    aput v3, v2, v6

    .line 23
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/16 v4, 0x80

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 25
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v6

    aput-object v3, v5, v7

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    new-array v2, v7, [I

    const v4, 0x10100a7

    aput v4, v2, v6

    .line 30
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v6

    aput-object v3, v5, v7

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 34
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 36
    return-object v0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/chillingo/libterms/utils/ApiUtils;->isRunningOnDeviceWithMinimumAPILevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
