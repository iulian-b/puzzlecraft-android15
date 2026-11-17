.class Lcom/fusepowered/sa/android/publish/splash/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/splash/a;
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

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->f(Lcom/fusepowered/sa/android/publish/splash/a;)Lcom/fusepowered/sa/android/publish/StartAppAd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "Error receiving Ad"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->c(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/a$3$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/splash/a$3$2;-><init>(Lcom/fusepowered/sa/android/publish/splash/a$3;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/splash/a;->a(Lcom/fusepowered/sa/android/publish/splash/a;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Splash Ad receivied"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/a$3$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/splash/a$3$1;-><init>(Lcom/fusepowered/sa/android/publish/splash/a$3;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/splash/a;->a(Lcom/fusepowered/sa/android/publish/splash/a;Ljava/lang/Runnable;)V

    return-void
.end method
