.class Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;
.super Lcom/fusepowered/sa/android/publish/slider/sliding/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->c(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->c(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->h(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->f(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->a(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->b(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->d(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->e(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->g(Z)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;)V
    .locals 4

    invoke-static {p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->a(Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;)Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/a;->a(Landroid/view/View;Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;)V

    invoke-virtual {p2, p1}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->a(Landroid/view/View;)V

    invoke-static {p1}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->c(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->c(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->a(Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;)V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->s()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v2}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/a;->b(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
