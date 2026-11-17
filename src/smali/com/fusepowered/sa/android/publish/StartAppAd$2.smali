.class final Lcom/fusepowered/sa/android/publish/StartAppAd$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$2;->b:Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$2;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$2;->b:Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$2;->b:Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;

    invoke-interface {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;->splashHidden()V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
