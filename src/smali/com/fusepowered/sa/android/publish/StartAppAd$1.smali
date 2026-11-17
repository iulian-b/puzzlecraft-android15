.class Lcom/fusepowered/sa/android/publish/StartAppAd$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/StartAppAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/StartAppAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/StartAppAd;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$1;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fusepowered.sa.android.OnClickCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$1;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->access$000(Lcom/fusepowered/sa/android/publish/StartAppAd;)Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$1;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdDisplayListener;->adClicked(Lcom/fusepowered/sa/android/publish/Ad;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$1;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->access$000(Lcom/fusepowered/sa/android/publish/StartAppAd;)Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$1;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->access$000(Lcom/fusepowered/sa/android/publish/StartAppAd;)Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$1;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdDisplayListener;->adHidden(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
