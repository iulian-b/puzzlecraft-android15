.class public Lcom/fusepowered/sa/android/publish/b/f;
.super Lcom/fusepowered/sa/android/publish/b/b;


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

.field private b:Lcom/fusepowered/sa/android/publish/splash/a;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/b/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->a:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/b/f;->c:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/b/f;->d:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/f;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SplashConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->a:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->a:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/f;->b()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "SplashMode"

    const/4 v3, 0x3

    const-string v4, "onKeyDown"

    invoke-static {v2, v3, v4}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/b/f;->c:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/b/f;->d:Z

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->d:Z

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/b/f;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/splash/a;->b()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/f;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Test Mode"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x18

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/b/f;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j()V
    .locals 3

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onPause"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->c()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onResume"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->a:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/f;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AdPreference"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/f;->a()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "testMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/b/f;->c:Z

    new-instance v1, Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/f;->b()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/b/f;->a:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-direct {v1, v2, v3, v0}, Lcom/fusepowered/sa/android/publish/splash/a;-><init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/b/f;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/f;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->a(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 3

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
