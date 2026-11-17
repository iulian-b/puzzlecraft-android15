.class Lcom/fusepowered/ac/ae$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ae;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/fusepowered/ac/ae;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/ae;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/fusepowered/ac/ae$9;->b:Lcom/fusepowered/ac/ae;

    iput-object p2, p0, Lcom/fusepowered/ac/ae$9;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1356
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1357
    iget-object v1, p0, Lcom/fusepowered/ac/ae$9;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1358
    iget-object v1, p0, Lcom/fusepowered/ac/ae$9;->b:Lcom/fusepowered/ac/ae;

    iget-object v1, v1, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/ae$9;->b:Lcom/fusepowered/ac/ae;

    iget-object v2, p0, Lcom/fusepowered/ac/ae$9;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/fusepowered/ac/ae$9;->b:Lcom/fusepowered/ac/ae;

    iget-object v2, v2, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v2, v2, Lcom/fusepowered/ac/ADCVideo;->u:I

    iget-object v3, p0, Lcom/fusepowered/ac/ae$9;->b:Lcom/fusepowered/ac/ae;

    iget-object v3, v3, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/ae;->b(I)V

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/ae$9;->b:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->j()V

    .line 1360
    return-void
.end method
