.class public Lcom/fusepowered/l1/Bridge;
.super Landroid/webkit/WebViewClient;
.source "Bridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final LOOPME:Ljava/lang/String; = "loopme"

.field private static final VIDEO:Ljava/lang/String; = "video"

.field private static final VIDEO_DISABLE_STRETCH:Ljava/lang/String; = "/disableStretching"

.field private static final VIDEO_ENABLE_STRETCH:Ljava/lang/String; = "/enableStretching"

.field private static final VIDEO_LOAD:Ljava/lang/String; = "/load"

.field private static final VIDEO_MUTE:Ljava/lang/String; = "/mute"

.field private static final VIDEO_PAUSE:Ljava/lang/String; = "/pause"

.field private static final VIDEO_PLAY:Ljava/lang/String; = "/play"

.field private static final WEBVIEW:Ljava/lang/String; = "webview"

.field private static final WEBVIEW_CLOSE:Ljava/lang/String; = "/close"

.field private static final WEBVIEW_FAIL:Ljava/lang/String; = "/fail"

.field private static final WEBVIEW_SUCCESS:Ljava/lang/String; = "/success"

.field private static final WEBVIEW_VIBRATE:Ljava/lang/String; = "/vibrate"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVideoListener:Lcom/fusepowered/l1/BridgeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/fusepowered/l1/Bridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/Bridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/l1/BridgeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fusepowered/l1/BridgeListener;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/Bridge;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VideoBridgeListener should not be null"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method

.method private handleVideoCommands(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    if-nez v7, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 110
    .local v5, "uri":Landroid/net/Uri;
    const-string v7, "/load"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    const-string v7, "src"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "videoUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v7, v6}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v6    # "videoUrl":Ljava/lang/String;
    :cond_2
    const-string v7, "/mute"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 115
    const-string v7, "mute"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "muteStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoMute(Z)V

    goto :goto_0

    .line 118
    .end local v0    # "muteStr":Ljava/lang/String;
    :cond_3
    const-string v7, "/play"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 119
    const-string v7, "currentTime"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "playStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 121
    .local v4, "time":I
    if-eqz v3, :cond_4

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 124
    :cond_4
    iget-object v7, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v7, v4}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoPlay(I)V

    goto :goto_0

    .line 126
    .end local v3    # "playStr":Ljava/lang/String;
    .end local v4    # "time":I
    :cond_5
    const-string v7, "/pause"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 127
    const-string v7, "currentTime"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "pauseStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 129
    .local v2, "pause_time":I
    if-eqz v1, :cond_6

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 132
    :cond_6
    iget-object v7, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v7, v2}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoPause(I)V

    goto :goto_0

    .line 134
    .end local v1    # "pauseStr":Ljava/lang/String;
    .end local v2    # "pause_time":I
    :cond_7
    const-string v7, "/enableStretching"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 135
    iget-object v7, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoStretch(Z)V

    goto :goto_0

    .line 137
    :cond_8
    const-string v7, "/disableStretching"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    iget-object v7, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/fusepowered/l1/BridgeListener;->onJsVideoStretch(Z)V

    goto/16 :goto_0
.end method

.method private handleWebviewCommands(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v2, "/close"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v2}, Lcom/fusepowered/l1/BridgeListener;->onJsClose()V

    goto :goto_0

    .line 85
    :cond_2
    const-string v2, "/vibrate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/l1/Bridge;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 88
    .local v1, "v":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 89
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1    # "v":Landroid/os/Vibrator;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/fusepowered/l1/Bridge;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Missing permission for vibrate"

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v2, "/fail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    iget-object v2, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    const-string v3, "Ad received specific URL loopme://webview/fail"

    invoke-interface {v2, v3}, Lcom/fusepowered/l1/BridgeListener;->onJsLoadFail(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    const-string v2, "/success"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v2}, Lcom/fusepowered/l1/BridgeListener;->onJsLoadSuccess()V

    goto :goto_0
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/l1/BridgeListener;->onJsLoadFail(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v6, Lcom/fusepowered/l1/Bridge;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldOverrideUrlLoading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v6, v7, v8}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 47
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/fusepowered/l1/Bridge;->mContext:Landroid/content/Context;

    .line 48
    const/4 v4, 0x0

    .line 50
    .local v4, "redirect":Ljava/net/URI;
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "redirect":Ljava/net/URI;
    .local v5, "redirect":Ljava/net/URI;
    move-object v4, v5

    .line 55
    .end local v5    # "redirect":Ljava/net/URI;
    .restart local v4    # "redirect":Ljava/net/URI;
    :goto_0
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "protocol":Ljava/lang/String;
    const-string v6, "loopme"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    check-cast p1, Lcom/fusepowered/l1/AdView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/fusepowered/l1/AdView;->sendNativeCallFinished()V

    .line 59
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "path":Ljava/lang/String;
    const-string v6, "webview"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    invoke-direct {p0, v2}, Lcom/fusepowered/l1/Bridge;->handleWebviewCommands(Ljava/lang/String;)V

    .line 73
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 51
    .end local v3    # "protocol":Ljava/lang/String;
    .restart local p1    # "view":Landroid/webkit/WebView;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local p1    # "view":Landroid/webkit/WebView;
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "protocol":Ljava/lang/String;
    :cond_1
    const-string v6, "video"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    invoke-direct {p0, v2, p2}, Lcom/fusepowered/l1/Bridge;->handleVideoCommands(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_2
    iget-object v6, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    if-eqz v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/fusepowered/l1/Bridge;->mVideoListener:Lcom/fusepowered/l1/BridgeListener;

    invoke-interface {v6, p2}, Lcom/fusepowered/l1/BridgeListener;->onNonLoopMe(Ljava/lang/String;)V

    goto :goto_1
.end method
