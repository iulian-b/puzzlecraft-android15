.class public Lcom/fusepowered/l1/AdView;
.super Landroid/webkit/WebView;
.source "AdView.java"

# interfaces
.implements Lcom/fusepowered/l1/JsCommands;
.implements Lcom/fusepowered/l1/BridgeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

.field private mCurrentVideoState:Lcom/fusepowered/l1/VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fusepowered/l1/AdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/fusepowered/l1/AdView;->init()V

    .line 20
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 28
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 30
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/fusepowered/l1/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/fusepowered/l1/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 35
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 36
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/AdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 38
    new-instance v1, Lcom/fusepowered/l1/Bridge;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/Bridge;-><init>(Lcom/fusepowered/l1/BridgeListener;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addBridgeListener(Lcom/fusepowered/l1/BridgeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/l1/BridgeListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    .line 24
    return-void
.end method

.method public getCurrentVideoState()Lcom/fusepowered/l1/VideoState;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mCurrentVideoState:Lcom/fusepowered/l1/VideoState;

    return-object v0
.end method

.method public onAppear()V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "js WEBVIEW : VISIBLE"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 48
    const-string v0, "javascript:window.L.bridge.set(\'webview\', {state: \'VISIBLE\'});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onDisappear()V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "js WEBVIEW : CLOSED"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 54
    const-string v0, "javascript:window.L.bridge.set(\'webview\', {state: \'CLOSED\'});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onHidden()V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "js WEBVIEW : HIDDEN"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 60
    const-string v0, "javascript:window.L.bridge.set(\'webview\', {state: \'HIDDEN\'});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onJsClose()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0}, Lcom/fusepowered/l1/BridgeListener;->onJsClose()V

    .line 97
    :cond_0
    return-void
.end method

.method public onJsLoadFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "mess"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/BridgeListener;->onJsLoadFail(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onJsLoadSuccess()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0}, Lcom/fusepowered/l1/BridgeListener;->onJsLoadSuccess()V

    .line 104
    :cond_0
    return-void
.end method

.method public onJsVideoLoad(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoLoad(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onJsVideoMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoMute(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public onJsVideoPause(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoPause(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public onJsVideoPlay(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoPlay(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onJsVideoStretch(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoStretch(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public onNonLoopMe(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/fusepowered/l1/AdView;->mBridgeListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/BridgeListener;->onNonLoopMe(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public sendNativeCallFinished()V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "js sendNativeCallFinished"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 158
    const-string v0, "javascript:window.L.bridge.set(\'webview\', {isNativeCallFinished: \'true\'});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setVideoCurrentTime(I)V
    .locals 2
    .param p1, "currentTime"    # I

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.L.bridge.set(\'video\', {currentTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setVideoDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 72
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js video duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.L.bridge.set(\'video\', {duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 83
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call js set video mute"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.L.bridge.set(\'video\', {mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setVideoState(Lcom/fusepowered/l1/VideoState;)V
    .locals 3
    .param p1, "state"    # Lcom/fusepowered/l1/VideoState;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fusepowered/l1/AdView;->mCurrentVideoState:Lcom/fusepowered/l1/VideoState;

    .line 66
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js VIDEO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/l1/VideoState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.L.bridge.set(\'video\', {state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/l1/VideoState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public shake()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/fusepowered/l1/AdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "js shake"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 89
    const-string v0, "javascript:window.L.bridge.set(\'webview\', {shake: \'true\'});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdView;->loadUrl(Ljava/lang/String;)V

    .line 90
    return-void
.end method
