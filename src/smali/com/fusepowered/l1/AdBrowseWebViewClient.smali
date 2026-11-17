.class Lcom/fusepowered/l1/AdBrowseWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdBrowseWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;
    }
.end annotation


# static fields
.field public static final GEO_HOST:Ljava/lang/String; = "maps.google.com"

.field public static final GEO_SCHEME:Ljava/lang/String; = "geo"

.field public static final HEADER_PLAIN_TEXT:Ljava/lang/String; = "plain/text"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAILTO_SCHEME:Ljava/lang/String; = "mailto"

.field public static final MARKET_HOST:Ljava/lang/String; = "play.google.com"

.field public static final MARKET_SCHEME:Ljava/lang/String; = "market"

.field public static final TEL_SCHEME:Ljava/lang/String; = "tel"

.field public static final YOUTUBE_HOST1:Ljava/lang/String; = "www.youtube.com"

.field public static final YOUTUBE_HOST2:Ljava/lang/String; = "m.youtube.com"

.field public static final YOUTUBE_SCHEME:Ljava/lang/String; = "vnd.youtube"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fusepowered/l1/AdBrowseWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    .line 39
    return-void
.end method

.method private checkHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "maps.google.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    .local v0, "searchAddress":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v0    # "searchAddress":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 81
    :cond_0
    const-string v1, "play.google.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "www.youtube.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "m.youtube.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_1
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/AdBrowseWebViewClient;->leaveApp(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private leaveApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    invoke-interface {v1}, Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;->onLeaveApp()V

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;->onPageFinished(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    invoke-interface {v0}, Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;->onPageStarted()V

    .line 107
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "mess":Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/l1/AdBrowseWebViewClient;->LOG_TAG:Ljava/lang/String;

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 124
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    invoke-interface {v1}, Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;->onReceiveError()V

    .line 127
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 43
    sget-object v6, Lcom/fusepowered/l1/AdBrowseWebViewClient;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldOverrideUrlLoading url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v6, v7, v8}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 48
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "host":Ljava/lang/String;
    const-string v6, "tel"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    iget-object v6, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    :goto_0
    return v5

    .line 54
    :cond_0
    const-string v6, "mailto"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    const-string v6, "mailto:"

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "i":Landroid/content/Intent;
    const-string v6, "plain/text"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.EMAIL"

    new-array v8, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v6, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    const-string v6, "geo"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .local v3, "searchAddress":Landroid/content/Intent;
    iget-object v6, p0, Lcom/fusepowered/l1/AdBrowseWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    .end local v3    # "searchAddress":Landroid/content/Intent;
    :cond_2
    const-string v6, "market"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "vnd.youtube"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 67
    :cond_3
    invoke-direct {p0, p2}, Lcom/fusepowered/l1/AdBrowseWebViewClient;->leaveApp(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/fusepowered/l1/AdBrowseWebViewClient;->checkHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method
