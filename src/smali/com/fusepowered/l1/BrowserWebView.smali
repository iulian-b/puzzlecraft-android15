.class public Lcom/fusepowered/l1/BrowserWebView;
.super Landroid/webkit/WebView;
.source "BrowserWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/fusepowered/l1/BrowserWebView;->init()V

    .line 14
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0}, Lcom/fusepowered/l1/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 18
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 25
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 26
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 27
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 28
    invoke-virtual {p0, v2}, Lcom/fusepowered/l1/BrowserWebView;->setInitialScale(I)V

    .line 29
    return-void
.end method
