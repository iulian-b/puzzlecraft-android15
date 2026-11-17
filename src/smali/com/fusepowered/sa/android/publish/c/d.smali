.class public abstract Lcom/fusepowered/sa/android/publish/c/d;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/fusepowered/sa/android/publish/Ad;

.field protected final c:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

.field protected final d:Lcom/fusepowered/sa/android/publish/AdEventListener;

.field protected e:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/c/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/c/d;->b:Lcom/fusepowered/sa/android/publish/Ad;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/c/d;->c:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iput-object p4, p0, Lcom/fusepowered/sa/android/publish/c/d;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iput-object p5, p0, Lcom/fusepowered/sa/android/publish/c/d;->e:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/d;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/sa/android/publish/Ad$AdState;->READY:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/Ad;->setState(Lcom/fusepowered/sa/android/publish/Ad$AdState;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/d;->b:Lcom/fusepowered/sa/android/publish/Ad;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/Ad;->setErrorMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/d;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/d;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/d;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/fusepowered/sa/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)Z
.end method

.method public c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/sa/android/publish/c/d$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/c/d$1;-><init>(Lcom/fusepowered/sa/android/publish/c/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/c/d;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/c/d;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;
    .locals 5

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/d;->c:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/d;->c:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/d;->e:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/c/d;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/fusepowered/sa/android/publish/f/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->fillAdPreferences(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V

    return-object v0
.end method
