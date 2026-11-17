.class Lcom/fusepowered/sa/android/publish/f/o$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/f/o$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/f/o$a;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/f/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o$a;->a(Lcom/fusepowered/sa/android/publish/f/o$a;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o$a;->b(Lcom/fusepowered/sa/android/publish/f/o$a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/o$a;->a(Lcom/fusepowered/sa/android/publish/f/o$a;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o$a;->c(Lcom/fusepowered/sa/android/publish/f/o$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o$a;->c(Lcom/fusepowered/sa/android/publish/f/o$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/f/o$a;->d(Lcom/fusepowered/sa/android/publish/f/o$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o$a;->e(Lcom/fusepowered/sa/android/publish/f/o$a;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a$1;->a:Lcom/fusepowered/sa/android/publish/f/o$a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o$a;->e(Lcom/fusepowered/sa/android/publish/f/o$a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
