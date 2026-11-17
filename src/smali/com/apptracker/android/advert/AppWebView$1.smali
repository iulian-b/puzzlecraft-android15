.class Lcom/apptracker/android/advert/AppWebView$1;
.super Landroid/webkit/WebChromeClient;
.source "ab"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/advert/AppWebView;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/advert/AppWebView;


# direct methods
.method constructor <init>(Lcom/apptracker/android/advert/AppWebView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/advert/AppWebView$1;->m:Lcom/apptracker/android/advert/AppWebView;

    .line 40
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 254
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 213
    :cond_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 86
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 235
    invoke-virtual {v0, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 29
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    move v0, v1

    .line 174
    goto :goto_0
.end method
