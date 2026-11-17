.class Lcom/fusepowered/sa/android/publish/splash/a$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/splash/a$3;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/splash/a$3;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/splash/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->e(Lcom/fusepowered/sa/android/publish/splash/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->f(Lcom/fusepowered/sa/android/publish/splash/a;)Lcom/fusepowered/sa/android/publish/StartAppAd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "Displaying Splash Ad"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->b(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->f(Lcom/fusepowered/sa/android/publish/splash/a;)Lcom/fusepowered/sa/android/publish/StartAppAd;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v1, v1, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/splash/a;->g(Lcom/fusepowered/sa/android/publish/splash/a;)Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showAd(Lcom/fusepowered/sa/android/publish/AdDisplayListener;)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->h(Lcom/fusepowered/sa/android/publish/splash/a;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->i(Lcom/fusepowered/sa/android/publish/splash/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
