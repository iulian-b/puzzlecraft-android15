.class Lcom/fusepowered/sa/android/publish/list3d/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/list3d/c;->a(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/list3d/c;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/list3d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->n(Lcom/fusepowered/sa/android/publish/list3d/c;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v2, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Lcom/fusepowered/sa/android/publish/list3d/c;Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->l(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->h(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->n(Lcom/fusepowered/sa/android/publish/list3d/c;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    move-result-object v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a(J)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->n(Lcom/fusepowered/sa/android/publish/list3d/c;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->k(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->j(Lcom/fusepowered/sa/android/publish/list3d/c;I)V

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->n(Lcom/fusepowered/sa/android/publish/list3d/c;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$3;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/c;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
