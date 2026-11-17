.class Lcom/fusepowered/ac/ae$a;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Rect;

.field final synthetic b:Lcom/fusepowered/ac/ae;


# direct methods
.method public constructor <init>(Lcom/fusepowered/ac/ae;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/fusepowered/ac/ae$a;->b:Lcom/fusepowered/ac/ae;

    .line 1404
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ae$a;->a:Landroid/graphics/Rect;

    .line 1405
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1409
    const/16 v0, 0xff

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1410
    iget-object v0, p0, Lcom/fusepowered/ac/ae$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae$a;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1411
    iget-object v0, p0, Lcom/fusepowered/ac/ae$a;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->ao:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/ae$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae$a;->b:Lcom/fusepowered/ac/ae;

    iget-object v2, v2, Lcom/fusepowered/ac/ae;->ao:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/fusepowered/ac/ae$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/ac/ae$a;->b:Lcom/fusepowered/ac/ae;

    iget-object v3, v3, Lcom/fusepowered/ac/ae;->ao:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 1412
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae$a;->invalidate()V

    .line 1413
    return-void
.end method
