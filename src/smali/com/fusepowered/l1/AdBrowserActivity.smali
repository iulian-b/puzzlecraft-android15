.class public final Lcom/fusepowered/l1/AdBrowserActivity;
.super Landroid/app/Activity;
.source "AdBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/AdBrowserActivity$6;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

.field private mBackButton:Landroid/widget/Button;

.field private mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

.field private mIsBackFromMarket:Z

.field private mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

.field private mProgress:Landroid/view/View;

.field private mWebClientListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mIsBackFromMarket:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/l1/AdBrowserActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdBrowserActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/AdBrowserActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdBrowserActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/widget/Button;Lcom/fusepowered/l1/utilites/Drawables;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/AdBrowserActivity;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Lcom/fusepowered/l1/utilites/Drawables;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/l1/AdBrowserActivity;->setImage(Landroid/widget/Button;Lcom/fusepowered/l1/utilites/Drawables;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/l1/AdBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/l1/AdBrowserActivity;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fusepowered/l1/AdBrowserActivity;->sendLeaveAppNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/fusepowered/l1/AdBrowserActivity;)Lcom/fusepowered/l1/AdBrowseLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdBrowserActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/l1/AdBrowserActivity;)Lcom/fusepowered/l1/BaseAd;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdBrowserActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    return-object v0
.end method

.method private initButtonListeners(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowseLayout;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/l1/AdBrowserActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/l1/AdBrowserActivity$2;-><init>(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowseLayout;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/l1/AdBrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/AdBrowserActivity$3;-><init>(Lcom/fusepowered/l1/AdBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowseLayout;->getRefreshButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/l1/AdBrowserActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/l1/AdBrowserActivity$4;-><init>(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowseLayout;->getNativeButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/l1/AdBrowserActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/l1/AdBrowserActivity$5;-><init>(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method private initWebView(Lcom/fusepowered/l1/BrowserWebView;)V
    .locals 2
    .param p1, "webView"    # Lcom/fusepowered/l1/BrowserWebView;

    .prologue
    .line 84
    new-instance v1, Lcom/fusepowered/l1/AdBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/l1/AdBrowserActivity$1;-><init>(Lcom/fusepowered/l1/AdBrowserActivity;)V

    iput-object v1, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mWebClientListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    .line 111
    new-instance v0, Lcom/fusepowered/l1/AdBrowseWebViewClient;

    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mWebClientListener:Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;

    invoke-direct {v0, v1}, Lcom/fusepowered/l1/AdBrowseWebViewClient;-><init>(Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;)V

    .line 112
    .local v0, "client":Lcom/fusepowered/l1/AdBrowseWebViewClient;
    invoke-virtual {p1, v0}, Lcom/fusepowered/l1/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 113
    return-void
.end method

.method private sendLeaveAppNotification()V
    .locals 6

    .prologue
    .line 116
    iget-object v3, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    invoke-virtual {v3}, Lcom/fusepowered/l1/BaseAd;->getAdFormat()Lcom/fusepowered/l1/AdFormat;

    move-result-object v1

    .line 117
    .local v1, "format":Lcom/fusepowered/l1/AdFormat;
    sget-object v3, Lcom/fusepowered/l1/AdBrowserActivity$6;->$SwitchMap$com$loopme$AdFormat:[I

    invoke-virtual {v1}, Lcom/fusepowered/l1/AdFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 129
    sget-object v3, Lcom/fusepowered/l1/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Unsupported ad format"

    sget-object v5, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v3, v4, v5}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 132
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    check-cast v2, Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 120
    .local v2, "interstitial":Lcom/fusepowered/l1/LoopMeInterstitial;
    invoke-virtual {v2, v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLeaveApp(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    goto :goto_0

    .line 124
    .end local v2    # "interstitial":Lcom/fusepowered/l1/LoopMeInterstitial;
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    check-cast v0, Lcom/fusepowered/l1/LoopMeBanner;

    .line 125
    .local v0, "banner":Lcom/fusepowered/l1/LoopMeBanner;
    invoke-virtual {v0, v0}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLeaveApp(Lcom/fusepowered/l1/LoopMeBanner;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setImage(Landroid/widget/Button;Lcom/fusepowered/l1/utilites/Drawables;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "image"    # Lcom/fusepowered/l1/utilites/Drawables;

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 136
    invoke-virtual {p2, p0}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p2, p0}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/fusepowered/l1/AdBrowserActivity;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 38
    invoke-static {}, Lcom/fusepowered/l1/BaseAdHolder;->get()Lcom/fusepowered/l1/BaseAd;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    .line 39
    const-string v1, ""

    .line 40
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 42
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    :goto_0
    new-instance v2, Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-direct {v2, p0}, Lcom/fusepowered/l1/AdBrowseLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    .line 48
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {p0, v2}, Lcom/fusepowered/l1/AdBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 50
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v2}, Lcom/fusepowered/l1/AdBrowseLayout;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mProgress:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v2}, Lcom/fusepowered/l1/AdBrowseLayout;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mBackButton:Landroid/widget/Button;

    .line 53
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v2}, Lcom/fusepowered/l1/AdBrowseLayout;->getWebView()Lcom/fusepowered/l1/BrowserWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    .line 54
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-direct {p0, v2}, Lcom/fusepowered/l1/AdBrowserActivity;->initWebView(Lcom/fusepowered/l1/BrowserWebView;)V

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/BrowserWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 62
    :goto_1
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-direct {p0, v2}, Lcom/fusepowered/l1/AdBrowserActivity;->initButtonListeners(Landroid/webkit/WebView;)V

    .line 63
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdBrowserActivity;->finish()V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {v2, v1}, Lcom/fusepowered/l1/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 188
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/BrowserWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/BrowserWebView;->goBack()V

    .line 191
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdBrowserActivity;->finish()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    sget-object v0, Lcom/fusepowered/l1/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 69
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/BrowserWebView;->onPause()V

    .line 70
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mIsBackFromMarket:Z

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    sget-object v0, Lcom/fusepowered/l1/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 76
    iget-boolean v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mIsBackFromMarket:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdBrowserActivity;->finish()V

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mIsBackFromMarket:Z

    .line 80
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mLayout:Lcom/fusepowered/l1/AdBrowseLayout;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowseLayout;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity;->mAdBrowseWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/BrowserWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method
