.class Lcom/fusepowered/sa/android/publish/splash/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/splash/a;->i()V
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

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$6;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$6;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->m(Lcom/fusepowered/sa/android/publish/splash/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "Splahs Ad Display Timeout"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$6;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->i(Lcom/fusepowered/sa/android/publish/splash/a;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/splash/a$6$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/splash/a$6$1;-><init>(Lcom/fusepowered/sa/android/publish/splash/a$6;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.fusepowered.sa.android.CloseAdActivityReply"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$6;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->f(Lcom/fusepowered/sa/android/publish/splash/a;)Lcom/fusepowered/sa/android/publish/StartAppAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->close()V

    :cond_0
    return-void
.end method
