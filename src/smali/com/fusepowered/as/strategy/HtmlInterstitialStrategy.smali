.class public final Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;
.super Ljava/lang/Object;
.source "HtmlInterstitialStrategy.java"

# interfaces
.implements Lcom/fusepowered/as/strategy/InterstitialStrategy;


# instance fields
.field private activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

.field private ad:Lcom/fusepowered/as/model/ad/HTMLProviderAd;

.field private closeButton:Lcom/fusepowered/as/view/component/CloseButton;

.field private controllerId:Ljava/lang/String;

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private webView:Lcom/fusepowered/as/view/component/ASWebView;

.field private webViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/HTMLProviderAd;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    .line 55
    iput-object p2, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 56
    iput-object p3, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    .line 57
    const-string v0, "controllerId"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->controllerId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->controllerId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public buildInterstitialPlayer()V
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, -0x1

    .line 63
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 64
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 77
    new-instance v0, Lcom/fusepowered/as/view/component/ASWebView;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/view/component/ASWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASWebView;

    .line 78
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-virtual {v0, v3}, Lcom/fusepowered/as/view/component/ASWebView;->setBackgroundColor(I)V

    .line 79
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASWebView;

    new-instance v1, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;-><init>(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASWebView;->registerProviderListener(Lcom/fusepowered/as/controller/listener/ProviderListener;)V

    .line 112
    new-instance v0, Lcom/fusepowered/as/view/component/CloseButton;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    .line 115
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public playInterstitial()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 145
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 146
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASWebView;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->getHTML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASWebView;->loadData(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public registerEvents()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    new-instance v1, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$2;-><init>(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method
