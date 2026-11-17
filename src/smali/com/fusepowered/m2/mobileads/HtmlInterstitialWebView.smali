.class public Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;
.super Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;
.source "HtmlInterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adReport"    # Lcom/fusepowered/m2/common/AdReport;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->mHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method

.method private postHandlerRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public init(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .param p2, "isScrollable"    # Z
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "clickthroughUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-super {p0, p2}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->init(Z)V

    .line 22
    new-instance v0, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;-><init>(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 23
    .local v0, "htmlInterstitialWebViewListener":Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;
    new-instance v1, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-direct {v1, v0, p0, p4, p3}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;-><init>(Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v1, "htmlWebViewClient":Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 25
    return-void
.end method
