.class public Lcom/fusepowered/sa/android/publish/AppWallActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/AppWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placement"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/AppWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->getByIndex(I)Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)Lcom/fusepowered/sa/android/publish/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/AppWallActivity;->a:Lcom/fusepowered/sa/android/publish/b/b;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onCreate"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/AppWallActivity;->a()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/AppWallActivity;->a:Lcom/fusepowered/sa/android/publish/b/b;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/b/b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onDestroy"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/AppWallActivity;->a:Lcom/fusepowered/sa/android/publish/b/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/b/b;->l()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/AppWallActivity;->a:Lcom/fusepowered/sa/android/publish/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/b/b;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onPause"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/AppWallActivity;->a:Lcom/fusepowered/sa/android/publish/b/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/b/b;->j()V

    invoke-static {p0}, Lcom/fusepowered/sa/android/publish/f/o;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onResume"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/AppWallActivity;->a:Lcom/fusepowered/sa/android/publish/b/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/b/b;->k()V

    return-void
.end method
