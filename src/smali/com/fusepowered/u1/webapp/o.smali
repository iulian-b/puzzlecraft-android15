.class final Lcom/fusepowered/u1/webapp/o;
.super Landroid/webkit/WebViewClient;
.source "UnityAdsWebView.java"


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/webapp/UnityAdsWebView;


# direct methods
.method private constructor <init>(Lcom/fusepowered/u1/webapp/UnityAdsWebView;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/fusepowered/u1/webapp/o;->a:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/u1/webapp/UnityAdsWebView;B)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/fusepowered/u1/webapp/o;-><init>(Lcom/fusepowered/u1/webapp/UnityAdsWebView;)V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/fusepowered/u1/webapp/o;->a:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/fusepowered/u1/webapp/UnityAdsWebView;->a(Lcom/fusepowered/u1/webapp/UnityAdsWebView;)Lcom/fusepowered/u1/webapp/IUnityAdsWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/u1/webapp/o;->a:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/fusepowered/u1/webapp/UnityAdsWebView;->b(Lcom/fusepowered/u1/webapp/UnityAdsWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/fusepowered/u1/webapp/o;->a:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/fusepowered/u1/webapp/UnityAdsWebView;->c(Lcom/fusepowered/u1/webapp/UnityAdsWebView;)Z

    .line 327
    iget-object v0, p0, Lcom/fusepowered/u1/webapp/o;->a:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/fusepowered/u1/webapp/UnityAdsWebView;->a(Lcom/fusepowered/u1/webapp/UnityAdsWebView;)Lcom/fusepowered/u1/webapp/IUnityAdsWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/u1/webapp/IUnityAdsWebViewListener;->onWebAppLoaded()V

    .line 329
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to load url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    return v0
.end method
