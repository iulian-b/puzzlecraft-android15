.class Lcom/apptracker/android/advert/AppJSInterface$1;
.super Ljava/lang/Object;
.source "jb"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/advert/AppJSInterface;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/advert/AppJSInterface;


# direct methods
.method constructor <init>(Lcom/apptracker/android/advert/AppJSInterface;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/advert/AppJSInterface$1;->m:Lcom/apptracker/android/advert/AppJSInterface;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface$1;->m:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->m(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/listener/AppModuleControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/advert/AppJSInterface$1;->m:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->L(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/apptracker/android/listener/AppModuleControllerListener;->setLoading(Landroid/webkit/WebView;Z)V

    .line 211
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface$1;->m:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->m(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/listener/AppModuleControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/advert/AppJSInterface$1;->m:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->L(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->onCloseClick(Landroid/webkit/WebView;)V

    .line 171
    return-void
.end method
