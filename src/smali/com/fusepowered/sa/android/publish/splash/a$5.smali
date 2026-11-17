.class Lcom/fusepowered/sa/android/publish/splash/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/splash/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/splash/a;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/splash/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->e(Lcom/fusepowered/sa/android/publish/splash/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->k(Lcom/fusepowered/sa/android/publish/splash/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->l(Lcom/fusepowered/sa/android/publish/splash/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "Splash Loading Timer Expired"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->a(Lcom/fusepowered/sa/android/publish/splash/a;Lcom/fusepowered/sa/android/publish/StartAppAd;)Lcom/fusepowered/sa/android/publish/StartAppAd;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->d(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->e(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$5;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->d(Lcom/fusepowered/sa/android/publish/splash/a;)V

    :cond_0
    return-void
.end method
