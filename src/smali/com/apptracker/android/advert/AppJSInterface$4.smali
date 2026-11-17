.class Lcom/apptracker/android/advert/AppJSInterface$4;
.super Ljava/lang/Object;
.source "jb"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/advert/AppJSInterface;->open(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/apptracker/android/advert/AppJSInterface;

.field private final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptracker/android/advert/AppJSInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->h:Lcom/apptracker/android/advert/AppJSInterface;

    iput-object p2, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->m:Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->h:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Lcom/apptracker/android/advert/AppJSInterface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?\t&{\u001e4J7\u0005:\u000e{\u00035J5\u000b/\u0003-\u000f{\u0008)\u0005,\u0019>\u0018{G{"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, ".\u000c+\u0010 \u000b+L&\u000c;\u0007!\u0016a\u0003,\u0016&\r!L\u0019+\n5"

    invoke-static {v1}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    iget-object v1, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->h:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->B(Lcom/apptracker/android/advert/AppJSInterface;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->h:Lcom/apptracker/android/advert/AppJSInterface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Lcom/apptracker/android/advert/AppJSInterface;Z)V

    .line 77
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->h:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->m(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/listener/AppModuleControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/advert/AppJSInterface$4;->h:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->L(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->destroyAd(Landroid/webkit/WebView;)V

    .line 86
    :cond_0
    return-void
.end method
