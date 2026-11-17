.class Lcom/fusepowered/sa/android/publish/adinformation/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/adinformation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/adinformation/a;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/adinformation/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Lcom/fusepowered/sa/android/publish/adinformation/a;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;->c(Lcom/fusepowered/sa/android/publish/adinformation/a;)Lcom/fusepowered/sa/android/publish/adinformation/e;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/adinformation/a;->b(Lcom/fusepowered/sa/android/publish/adinformation/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/fusepowered/sa/android/publish/adinformation/e;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;->d(Lcom/fusepowered/sa/android/publish/adinformation/a;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/adinformation/a;->b(Lcom/fusepowered/sa/android/publish/adinformation/a;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-static {v0, v3}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Lcom/fusepowered/sa/android/publish/adinformation/a;Z)V

    return-void
.end method
