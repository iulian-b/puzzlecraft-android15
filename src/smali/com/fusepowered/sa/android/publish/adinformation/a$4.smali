.class Lcom/fusepowered/sa/android/publish/adinformation/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/adinformation/a;->b(Landroid/view/ViewGroup;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic c:Lcom/fusepowered/sa/android/publish/adinformation/a;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/adinformation/a;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$4;->c:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$4;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$4;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$4;->c:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;->f(Lcom/fusepowered/sa/android/publish/adinformation/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$4;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$4;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
