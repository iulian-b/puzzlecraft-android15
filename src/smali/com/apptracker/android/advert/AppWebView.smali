.class public Lcom/apptracker/android/advert/AppWebView;
.super Landroid/webkit/WebView;
.source "ab"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptracker/android/advert/AppWebView$AppWebClient;
    }
.end annotation


# instance fields
.field private synthetic A:Landroid/webkit/WebSettings;

.field private synthetic G:Ljava/lang/String;

.field private synthetic d:Landroid/content/Context;

.field private synthetic e:Z

.field private synthetic g:Z

.field private synthetic h:Lcom/apptracker/android/listener/AppModuleControllerListener;

.field private synthetic k:Landroid/app/ProgressDialog;

.field private synthetic m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apptracker/android/listener/AppModuleControllerListener;)V
    .locals 2
    .param p1, "arg0"    # Landroid/app/Activity;
    .param p2, "arg1"    # Lcom/apptracker/android/listener/AppModuleControllerListener;

    .prologue
    const/4 v1, 0x1

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView;->m:Z

    .line 2
    iput-boolean v1, p0, Lcom/apptracker/android/advert/AppWebView;->e:Z

    .line 246
    iput-boolean v1, p0, Lcom/apptracker/android/advert/AppWebView;->g:Z

    .line 158
    iput-object p1, p0, Lcom/apptracker/android/advert/AppWebView;->d:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/apptracker/android/advert/AppWebView;->h:Lcom/apptracker/android/listener/AppModuleControllerListener;

    .line 70
    invoke-direct {p0}, Lcom/apptracker/android/advert/AppWebView;->G()V

    .line 98
    return-void
.end method

.method static synthetic B(Lcom/apptracker/android/advert/AppWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->G:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic G()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5
    const-string v0, "APTr"

    const-string v1, "2\u00042\u001e2\u000b7\u0003!\u00035\r{++\u001a\u000c\u000f9<2\u000f,"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->G:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/apptracker/android/advert/AppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->A:Landroid/webkit/WebSettings;

    .line 122
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->A:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->A:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 157
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->A:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->A:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 8
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->A:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 106
    :cond_1
    new-instance v0, Lcom/apptracker/android/advert/AppJSInterface;

    iget-object v1, p0, Lcom/apptracker/android/advert/AppWebView;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/apptracker/android/advert/AppWebView;->h:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-direct {v0, v1, v2, p0}, Lcom/apptracker/android/advert/AppJSInterface;-><init>(Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleControllerListener;Landroid/webkit/WebView;)V

    const-string v1, "\u001a:\u000b,\u00128\u001e"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apptracker/android/advert/AppWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 84
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->A:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 17
    :cond_2
    new-instance v0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;

    iget-object v1, p0, Lcom/apptracker/android/advert/AppWebView;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/apptracker/android/advert/AppWebView;->h:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/apptracker/android/advert/AppWebView$AppWebClient;-><init>(Lcom/apptracker/android/advert/AppWebView;Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleControllerListener;)V

    invoke-virtual {p0, v0}, Lcom/apptracker/android/advert/AppWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    new-instance v0, Lcom/apptracker/android/advert/AppWebView$1;

    invoke-direct {v0, p0}, Lcom/apptracker/android/advert/AppWebView$1;-><init>(Lcom/apptracker/android/advert/AppWebView;)V

    invoke-virtual {p0, v0}, Lcom/apptracker/android/advert/AppWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/advert/AppWebView;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;
    .param p1, "arg1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/apptracker/android/advert/AppWebView;->k:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/advert/AppWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/apptracker/android/advert/AppWebView;->G:Ljava/lang/String;

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/advert/AppWebView;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;
    .param p1, "arg1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/apptracker/android/advert/AppWebView;->m:Z

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/advert/AppWebView;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 2
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView;->e:Z

    return v0
.end method

.method static synthetic L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->k:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic k(Lcom/apptracker/android/advert/AppWebView;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView;->g:Z

    return v0
.end method

.method static synthetic m(Lcom/apptracker/android/advert/AppWebView;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppWebView;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView;->m:Z

    return v0
.end method

.method public static showInternetDialog(Landroid/content/Context;)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string v0, "\t\u000f*\u001f>\u0019/\u000f?J\u0008\u000f)\u001c2\t>J\u0015\u0005/J\u001a\u001c:\u00037\u000b9\u0006>"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->k:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 208
    return-void
.end method

.method public setLoadingURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/apptracker/android/advert/AppWebView;->G:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setResourceLoaded(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/apptracker/android/advert/AppWebView;->g:Z

    .line 63
    return-void
.end method

.method public setVisibilityControl(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/apptracker/android/advert/AppWebView;->e:Z

    .line 128
    return-void
.end method
