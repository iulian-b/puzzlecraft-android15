.class Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "OriginalTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/fusepowered/nx/monetization/theme/OriginalTheme;IIILandroid/graphics/drawable/shapes/Shape;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable;

.field final synthetic val$fillColor1:I

.field final synthetic val$fillColor2:I

.field final synthetic val$shader:I

.field final synthetic val$this$0:Lcom/fusepowered/nx/monetization/theme/OriginalTheme;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable;Lcom/fusepowered/nx/monetization/theme/OriginalTheme;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->this$1:Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$this$0:Lcom/fusepowered/nx/monetization/theme/OriginalTheme;

    iput p3, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$shader:I

    iput p4, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor2:I

    iput p5, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor1:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    iget v0, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$shader:I

    packed-switch v0, :pswitch_data_0

    .line 189
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v8, v0, 0x3

    .line 190
    .local v8, "gradientX":I
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, v8

    iget v5, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor2:I

    iget v6, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor1:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .end local v8    # "gradientX":I
    :goto_0
    return-object v0

    .line 187
    :pswitch_0
    new-instance v0, Landroid/graphics/RadialGradient;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    int-to-float v3, p1

    iget v4, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor2:I

    iget v5, p0, Lcom/fusepowered/nx/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor1:I

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1bb
        :pswitch_0
    .end packed-switch
.end method
