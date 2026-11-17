.class Lcom/fusepowered/sa/android/publish/slider/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/slider/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/slider/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/b$9;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$9;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->g(Lcom/fusepowered/sa/android/publish/slider/b;)V

    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$9;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b$9;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/slider/b;->c(Lcom/fusepowered/sa/android/publish/slider/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
