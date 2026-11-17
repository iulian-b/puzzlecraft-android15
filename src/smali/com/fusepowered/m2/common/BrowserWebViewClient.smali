.class Lcom/fusepowered/m2/common/BrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserWebViewClient.java"


# static fields
.field private static final SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/fusepowered/m2/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Lcom/fusepowered/m2/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/fusepowered/m2/common/UrlAction;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/fusepowered/m2/common/UrlAction;

    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/m2/common/UrlAction;->OPEN_APP_MARKET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/fusepowered/m2/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/m2/common/M2Browser;)V
    .locals 0
    .param p1, "moPubBrowser"    # Lcom/fusepowered/m2/common/M2Browser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/common/BrowserWebViewClient;)Lcom/fusepowered/m2/common/M2Browser;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/common/BrowserWebViewClient;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/fusepowered/m2/common/util/Drawables;->LEFT_ARROW:Lcom/fusepowered/m2/common/util/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "backImageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v2}, Lcom/fusepowered/m2/common/M2Browser;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/fusepowered/m2/common/util/Drawables;->RIGHT_ARROW:Lcom/fusepowered/m2/common/util/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    .local v1, "forwardImageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v2}, Lcom/fusepowered/m2/common/M2Browser;->getForwardButton()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void

    .line 91
    .end local v0    # "backImageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "forwardImageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Lcom/fusepowered/m2/common/util/Drawables;->UNLEFT_ARROW:Lcom/fusepowered/m2/common/util/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 96
    .restart local v0    # "backImageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v2, Lcom/fusepowered/m2/common/util/Drawables;->UNRIGHT_ARROW:Lcom/fusepowered/m2/common/util/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v0, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/M2Browser;->getForwardButton()Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/common/util/Drawables;->UNRIGHT_ARROW:Lcom/fusepowered/m2/common/util/Drawables;

    iget-object v2, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoPubBrowser error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    :goto_0
    return v1

    .line 51
    :cond_0
    :try_start_0
    new-instance v3, Lcom/fusepowered/m2/common/UrlHandler$Builder;

    invoke-direct {v3}, Lcom/fusepowered/m2/common/UrlHandler$Builder;-><init>()V

    sget-object v4, Lcom/fusepowered/m2/common/BrowserWebViewClient;->SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v3

    new-instance v4, Lcom/fusepowered/m2/common/BrowserWebViewClient$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/m2/common/BrowserWebViewClient$1;-><init>(Lcom/fusepowered/m2/common/BrowserWebViewClient;)V

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withResultActions(Lcom/fusepowered/m2/common/UrlHandler$ResultActions;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->build()Lcom/fusepowered/m2/common/UrlHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v4}, Lcom/fusepowered/m2/common/M2Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, p2, v5, v6}, Lcom/fusepowered/m2/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lcom/fusepowered/m2/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;
    goto :goto_0
.end method
