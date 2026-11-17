.class Lcom/fusepowered/sa/android/publish/splash/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/splash/a;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/splash/a;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/splash/a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$4;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/splash/a$4;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$4;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->j(Lcom/fusepowered/sa/android/publish/splash/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$4;->b:Lcom/fusepowered/sa/android/publish/splash/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/a;->d(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$4;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
