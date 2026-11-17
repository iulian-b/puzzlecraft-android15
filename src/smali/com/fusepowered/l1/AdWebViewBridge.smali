.class public Lcom/fusepowered/l1/AdWebViewBridge;
.super Landroid/webkit/WebViewClient;
.source "AdWebViewBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBridgeListener:Lcom/fusepowered/l1/AdWebViewBridgeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/fusepowered/l1/AdWebViewBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/AdWebViewBridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/l1/AdWebViewBridgeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fusepowered/l1/AdWebViewBridgeListener;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/fusepowered/l1/AdWebViewBridge;->mBridgeListener:Lcom/fusepowered/l1/AdWebViewBridgeListener;

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/AdWebViewBridge;->LOG_TAG:Ljava/lang/String;

    const-string v1, "WebViewBridgeListener should not be null"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method

.method private logEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, ""

    .line 62
    .local v0, "event":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "et"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 68
    sget-object v2, Lcom/fusepowered/l1/AdWebViewBridge;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 70
    :cond_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    sget-object v2, Lcom/fusepowered/l1/AdWebViewBridge;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcom/fusepowered/l1/Utils;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p2}, Lcom/fusepowered/l1/AdWebViewBridge;->logEvent(Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/fusepowered/l1/AdWebViewBridge;->mBridgeListener:Lcom/fusepowered/l1/AdWebViewBridgeListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/l1/AdWebViewBridgeListener;->onJsLoadFail(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "loopme://webview/fail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/fusepowered/l1/AdWebViewBridge;->mBridgeListener:Lcom/fusepowered/l1/AdWebViewBridgeListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad received specific URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/l1/AdWebViewBridgeListener;->onJsLoadFail(Ljava/lang/String;)V

    .line 36
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 27
    :cond_0
    const-string v0, "loopme://webview/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/fusepowered/l1/AdWebViewBridge;->mBridgeListener:Lcom/fusepowered/l1/AdWebViewBridgeListener;

    invoke-interface {v0}, Lcom/fusepowered/l1/AdWebViewBridgeListener;->onJsClose()V

    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "loopme://webview/success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/fusepowered/l1/AdWebViewBridge;->mBridgeListener:Lcom/fusepowered/l1/AdWebViewBridgeListener;

    invoke-interface {v0}, Lcom/fusepowered/l1/AdWebViewBridgeListener;->onJsLoadSuccess()V

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/l1/AdWebViewBridge;->mBridgeListener:Lcom/fusepowered/l1/AdWebViewBridgeListener;

    invoke-interface {v0, p2}, Lcom/fusepowered/l1/AdWebViewBridgeListener;->onNonLoopMe(Ljava/lang/String;)V

    goto :goto_0
.end method
