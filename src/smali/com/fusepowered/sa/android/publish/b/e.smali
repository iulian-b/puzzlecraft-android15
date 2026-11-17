.class public Lcom/fusepowered/sa/android/publish/b/e;
.super Lcom/fusepowered/sa/android/publish/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/fusepowered/sa/android/publish/b/c;->a(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/webkit/WebView;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fusepowered/sa/android/publish/b/e$1;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/sa/android/publish/b/e$1;-><init>(Lcom/fusepowered/sa/android/publish/b/e;Landroid/webkit/WebView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/b/c;->j()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/e;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
