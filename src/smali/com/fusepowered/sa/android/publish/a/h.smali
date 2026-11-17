.class public Lcom/fusepowered/sa/android/publish/a/h;
.super Lcom/fusepowered/sa/android/publish/a/f;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/c;


# static fields
.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/sa/android/publish/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/f;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/fusepowered/sa/android/publish/a/h;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/a/h;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/h;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/sa/android/publish/a/h;->b:Ljava/lang/String;

    sget-object v0, Lcom/fusepowered/sa/android/publish/a/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/sa/android/publish/a/h;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getLauncherName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/k;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/h;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/k;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/h;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/k;->c()V

    return-void
.end method

.method public show()Z
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/h;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/a/h;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/f/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/e;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/h;->context:Landroid/content/Context;

    const-class v2, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "adInfoOverride"

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/a/h;->getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x14880000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/h;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
