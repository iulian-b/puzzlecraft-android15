.class Lcom/fusepowered/sa/android/publish/list3d/c$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/list3d/c;
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

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "getHeight"

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v1

    int-to-double v2, v1

    int-to-double v0, v0

    div-double/2addr v2, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Lcom/fusepowered/sa/android/publish/list3d/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Updating Position with Ratio: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mTouchState"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mTouchStartX"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mTouchStartY"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->d(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mListRotation"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->e(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->d(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mFirstItemPosition"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->f(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->e(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->g(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mLastItemPosition"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->h(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->f(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->i(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mListTop"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->j(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->g(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mListTopStart"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->k(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->h(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mListTopOffset"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->l(Lcom/fusepowered/sa/android/publish/list3d/c;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->i(Lcom/fusepowered/sa/android/publish/list3d/c;I)I

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v0, "mDynamics"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Lcom/fusepowered/sa/android/publish/list3d/c;Lcom/fusepowered/sa/android/publish/list3d/Dynamics;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const-string v1, "mLastVelocity"

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->m(Lcom/fusepowered/sa/android/publish/list3d/c;)F

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Lcom/fusepowered/sa/android/publish/list3d/c;F)F

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->n(Lcom/fusepowered/sa/android/publish/list3d/c;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a(D)V

    const-string v0, "list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/list3d/b;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "home"

    invoke-direct {v1, v2, v0, v3}, Lcom/fusepowered/sa/android/publish/list3d/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->setAdapter(Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0, v6}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Lcom/fusepowered/sa/android/publish/list3d/c;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v0, v6}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Lcom/fusepowered/sa/android/publish/list3d/c;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c$1;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->m(Lcom/fusepowered/sa/android/publish/list3d/c;)F

    move-result v1

    invoke-static {v0, v1, v6}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Lcom/fusepowered/sa/android/publish/list3d/c;FZ)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
