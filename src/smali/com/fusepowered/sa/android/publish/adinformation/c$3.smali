.class Lcom/fusepowered/sa/android/publish/adinformation/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/adinformation/c;->setOnInfoClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/adinformation/c;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/adinformation/c;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;->b:Lcom/fusepowered/sa/android/publish/adinformation/c;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;->b:Lcom/fusepowered/sa/android/publish/adinformation/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/adinformation/c;->a(Lcom/fusepowered/sa/android/publish/adinformation/c;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;->b:Lcom/fusepowered/sa/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->e(Lcom/fusepowered/sa/android/publish/adinformation/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;->b:Lcom/fusepowered/sa/android/publish/adinformation/c;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/adinformation/c;->d(Lcom/fusepowered/sa/android/publish/adinformation/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;->b:Lcom/fusepowered/sa/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->c(Lcom/fusepowered/sa/android/publish/adinformation/c;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
