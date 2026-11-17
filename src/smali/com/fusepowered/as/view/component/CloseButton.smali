.class public final Lcom/fusepowered/as/view/component/CloseButton;
.super Landroid/widget/Button;
.source "CloseButton.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field public final size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-super {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertDipToPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/as/view/component/CloseButton;->size:I

    .line 27
    iget v0, p0, Lcom/fusepowered/as/view/component/CloseButton;->size:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/CloseButton;->setWidth(I)V

    .line 28
    iget v0, p0, Lcom/fusepowered/as/view/component/CloseButton;->size:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/CloseButton;->setHeight(I)V

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/as/view/component/CloseButton;->size:I

    iget v2, p0, Lcom/fusepowered/as/view/component/CloseButton;->size:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    const-string v1, "X"

    invoke-virtual {p0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/CloseButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/view/component/CloseButton;->background:Landroid/graphics/drawable/Drawable;

    .line 38
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setGravity(I)V

    .line 41
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/view/component/CloseButton;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fusepowered/as/view/component/CloseButton;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public setVisibility(Z)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/fusepowered/as/view/component/CloseButton$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/as/view/component/CloseButton$1;-><init>(Lcom/fusepowered/as/view/component/CloseButton;Z)V

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
