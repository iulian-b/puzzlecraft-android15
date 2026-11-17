.class Lcom/fusepowered/ac/ae$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ae;->h()V
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
    .line 1313
    iput-object p1, p0, Lcom/fusepowered/ac/ae$8;->b:Lcom/fusepowered/ac/ae;

    iput-object p2, p0, Lcom/fusepowered/ac/ae$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/fusepowered/ac/ae$8;->b:Lcom/fusepowered/ac/ae;

    iget-boolean v0, v0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae$8;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/ae$8;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ae$8;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1318
    return-void
.end method
