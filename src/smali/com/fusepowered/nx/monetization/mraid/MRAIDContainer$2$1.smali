.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2$1;
.super Landroid/view/animation/Animation;
.source "MRAIDContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;

.field final synthetic val$containerDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;

    .prologue
    .line 953
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2$1;->this$1:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2$1;->val$containerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 957
    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 958
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2$1;->val$containerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 959
    return-void
.end method
