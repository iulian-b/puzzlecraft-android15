.class Lcom/apptracker/android/advert/AppJSInterface$2;
.super Ljava/lang/Object;
.source "jb"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/advert/AppJSInterface;->controlMedia(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic h:Ljava/lang/String;

.field final synthetic m:Lcom/apptracker/android/advert/AppJSInterface;


# direct methods
.method constructor <init>(Lcom/apptracker/android/advert/AppJSInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/advert/AppJSInterface$2;->m:Lcom/apptracker/android/advert/AppJSInterface;

    iput-object p2, p0, Lcom/apptracker/android/advert/AppJSInterface$2;->h:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface$2;->m:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->m(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/listener/AppModuleControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/advert/AppJSInterface$2;->m:Lcom/apptracker/android/advert/AppJSInterface;

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->L(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/advert/AppWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/advert/AppJSInterface$2;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/apptracker/android/listener/AppModuleControllerListener;->controlMedia(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 188
    return-void
.end method
