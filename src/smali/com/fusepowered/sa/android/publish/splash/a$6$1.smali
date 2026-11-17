.class Lcom/fusepowered/sa/android/publish/splash/a$6$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/splash/a$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/splash/a$6;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/splash/a$6;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$6$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$6$1;->a:Lcom/fusepowered/sa/android/publish/splash/a$6;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$6;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->d(Lcom/fusepowered/sa/android/publish/splash/a;)V

    return-void
.end method
