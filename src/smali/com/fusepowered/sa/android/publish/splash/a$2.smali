.class Lcom/fusepowered/sa/android/publish/splash/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdDisplayListener;


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

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$2;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 0

    return-void
.end method

.method public adDisplayed(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 0

    return-void
.end method

.method public adHidden(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Splash Screen had been hidden"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$2;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->a(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$2;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->d(Lcom/fusepowered/sa/android/publish/splash/a;)V

    return-void
.end method
