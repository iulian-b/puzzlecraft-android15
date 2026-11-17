.class Lcom/fusepowered/sa/android/publish/slider/b$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/slider/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/slider/b;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/b$8;->b:Lcom/fusepowered/sa/android/publish/slider/b;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/slider/b$8;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$8;->b:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->d(Lcom/fusepowered/sa/android/publish/slider/b;)Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b$8;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->h(Landroid/view/View;)V

    return-void
.end method
