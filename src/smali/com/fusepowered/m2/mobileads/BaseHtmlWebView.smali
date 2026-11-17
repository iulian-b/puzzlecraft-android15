.class public Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;
.super Lcom/fusepowered/m2/mobileads/BaseWebView;
.source "BaseHtmlWebView.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/ViewGestureDetector$UserClickListener;


# instance fields
.field private mClicked:Z

.field private final mViewGestureDetector:Lcom/fusepowered/m2/mobileads/ViewGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adReport"    # Lcom/fusepowered/m2/common/AdReport;

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->disableScrollingAndZoom()V

    .line 24
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 26
    new-instance v0, Lcom/fusepowered/m2/mobileads/ViewGestureDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/fusepowered/m2/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/common/AdReport;)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/fusepowered/m2/mobileads/ViewGestureDetector;

    .line 27
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/fusepowered/m2/mobileads/ViewGestureDetector;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/mobileads/ViewGestureDetector;->setUserClickListener(Lcom/fusepowered/m2/mobileads/ViewGestureDetector$UserClickListener;)V

    .line 29
    invoke-static {}, Lcom/fusepowered/m2/common/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/common/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/common/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/fusepowered/m2/common/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/util/VersionCode;->isAtLeast(Lcom/fusepowered/m2/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->enablePlugins(Z)V

    .line 32
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->setBackgroundColor(I)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;)Lcom/fusepowered/m2/mobileads/ViewGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/fusepowered/m2/mobileads/ViewGestureDetector;

    return-object v0
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->setVerticalScrollBarEnabled(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->setVerticalScrollbarOverlay(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public init(Z)V
    .locals 0
    .param p1, "isScrollable"    # Z

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->initializeOnTouchListener(Z)V

    .line 37
    return-void
.end method

.method initializeOnTouchListener(Z)V
    .locals 1
    .param p1, "isScrollable"    # Z

    .prologue
    .line 63
    new-instance v0, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView$1;-><init>(Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;Z)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    return-void
.end method

.method loadHtmlResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "htmlResponse"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v1, "http://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 44
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Lcom/fusepowered/m2/mobileads/BaseWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResetUserClick()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->mClicked:Z

    .line 81
    return-void
.end method

.method public onUserClick()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->mClicked:Z

    .line 76
    return-void
.end method

.method public wasClicked()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->mClicked:Z

    return v0
.end method
