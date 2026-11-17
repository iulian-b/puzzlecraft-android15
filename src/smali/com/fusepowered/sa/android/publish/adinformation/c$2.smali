.class Lcom/fusepowered/sa/android/publish/adinformation/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/adinformation/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/adinformation/c;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/adinformation/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->b(Lcom/fusepowered/sa/android/publish/adinformation/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/adinformation/c;->a(Lcom/fusepowered/sa/android/publish/adinformation/c;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c$2;->a:Lcom/fusepowered/sa/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->c(Lcom/fusepowered/sa/android/publish/adinformation/c;)V

    :cond_0
    return-void
.end method
