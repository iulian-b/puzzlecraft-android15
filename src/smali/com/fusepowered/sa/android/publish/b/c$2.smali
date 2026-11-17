.class Lcom/fusepowered/sa/android/publish/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/b/c;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/c$2;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c$2;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/b/c$2$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/b/c$2$1;-><init>(Lcom/fusepowered/sa/android/publish/b/c$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
