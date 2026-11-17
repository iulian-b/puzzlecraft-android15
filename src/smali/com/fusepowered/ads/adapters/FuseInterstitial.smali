.class public Lcom/fusepowered/ads/adapters/FuseInterstitial;
.super Landroid/webkit/WebViewClient;
.source "FuseInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;,
        Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://www.fuseboxx.com"

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final MIME_TYPE:Ljava/lang/String; = "text/html"

.field public static final ORIENTATION_ANY:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field private static sInstance:Lcom/fusepowered/ads/adapters/FuseInterstitial;


# instance fields
.field private adExtras:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

.field private ready:Z

.field private webView:Landroid/webkit/WebView;

.field private final webViewFactory:Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->sInstance:Lcom/fusepowered/ads/adapters/FuseInterstitial;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;)V
    .locals 2
    .param p1, "factory"    # Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->webViewFactory:Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->ready:Z

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/fusepowered/ads/adapters/FuseInterstitial;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->sInstance:Lcom/fusepowered/ads/adapters/FuseInterstitial;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/fusepowered/ads/adapters/FuseInterstitial;

    new-instance v1, Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;

    invoke-direct {v1}, Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/adapters/FuseInterstitial;-><init>(Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;)V

    sput-object v0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->sInstance:Lcom/fusepowered/ads/adapters/FuseInterstitial;

    .line 49
    :cond_0
    sget-object v0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->sInstance:Lcom/fusepowered/ads/adapters/FuseInterstitial;

    return-object v0
.end method


# virtual methods
.method public displayAd()Z
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 145
    :goto_0
    return v1

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->context:Landroid/content/Context;

    const-class v2, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAdExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->ready:Z

    .line 55
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->ready:Z

    return v0
.end method

.method public onAdClicked()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;->onFuseAdClicked(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;->onFuseAdClosed(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onAdDisplayed()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;->onFuseAdDisplayed(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 124
    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->ready:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->ready:Z

    .line 127
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;->onFuseAdReady(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->ready:Z

    .line 116
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;->onFuseAdError(Lcom/fusepowered/ads/adapters/FuseInterstitial;)V

    .line 119
    :cond_0
    return-void
.end method

.method public prepare(ILjava/lang/String;Ljava/lang/String;Lcom/fusepowered/ads/Size;ILandroid/content/Context;)V
    .locals 11
    .param p1, "adId"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "htmlBody"    # Ljava/lang/String;
    .param p4, "size"    # Lcom/fusepowered/ads/Size;
    .param p5, "orientation"    # I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    if-lez p1, :cond_0

    const/4 v8, 0x1

    .line 70
    .local v8, "validAdId":Z
    :goto_0
    if-nez v8, :cond_1

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ad id must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v8    # "validAdId":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 74
    .restart local v8    # "validAdId":Z
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v7, 0x1

    .line 75
    .local v7, "validAction":Z
    :goto_1
    if-nez v7, :cond_3

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Action must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v7    # "validAction":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 79
    .restart local v7    # "validAction":Z
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v9, 0x1

    .line 80
    .local v9, "validHtmlBody":Z
    :goto_2
    if-nez v9, :cond_5

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Html body must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v9    # "validHtmlBody":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 84
    .restart local v9    # "validHtmlBody":Z
    :cond_5
    if-eqz p4, :cond_6

    const/4 v10, 0x1

    .line 85
    .local v10, "validSize":Z
    :goto_3
    if-nez v10, :cond_7

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Size must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v10    # "validSize":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 89
    .restart local v10    # "validSize":Z
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->ready:Z

    .line 90
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->context:Landroid/content/Context;

    .line 92
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->webViewFactory:Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/fusepowered/ads/adapters/FuseInterstitial$WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->webView:Landroid/webkit/WebView;

    .line 93
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->webView:Landroid/webkit/WebView;

    const-string v2, "http://www.fuseboxx.com"

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    .line 97
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    const-string v2, "AD_ACTION"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    const-string v2, "AD_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    const-string v2, "o"

    move/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    const-string v2, "PH"

    iget v3, p4, Lcom/fusepowered/ads/Size;->portraitHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    const-string v2, "PW"

    iget v3, p4, Lcom/fusepowered/ads/Size;->portraitWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    const-string v2, "LH"

    iget v3, p4, Lcom/fusepowered/ads/Size;->landscapeHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->adExtras:Landroid/os/Bundle;

    const-string v2, "LW"

    iget v3, p4, Lcom/fusepowered/ads/Size;->landscapeWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public setListener(Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitial;->listener:Lcom/fusepowered/ads/adapters/FuseInterstitial$Listener;

    .line 136
    return-void
.end method
