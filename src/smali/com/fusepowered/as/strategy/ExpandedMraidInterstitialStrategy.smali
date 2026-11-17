.class public final Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;
.super Ljava/lang/Object;
.source "ExpandedMraidInterstitialStrategy.java"

# interfaces
.implements Lcom/fusepowered/as/strategy/InterstitialStrategy;


# instance fields
.field private activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

.field private ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

.field private bannerWebView:Lcom/fusepowered/as/view/component/ASMraidWebView;

.field private closeButton:Lcom/fusepowered/as/view/component/CloseButton;

.field private controllerId:Ljava/lang/String;

.field private expandUrl:Ljava/lang/String;

.field private firstOnResume:Z

.field private mraidBannerContainer:Landroid/view/ViewGroup;

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private useCustomClose:Z

.field private useNewWebView:Z

.field private webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

.field private webViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/MraidProviderAd;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useNewWebView:Z

    .line 245
    iput-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->firstOnResume:Z

    .line 75
    iput-object p1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    .line 76
    iput-object p2, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 77
    iput-object p3, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    .line 78
    const-string v0, "controllerId"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->controllerId:Ljava/lang/String;

    .line 79
    const-string v0, "mraidBannerViewId"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "mraidExpandCustomClose"

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useCustomClose:Z

    .line 82
    const-string v1, "mraidExpandUrl"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->expandUrl:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/fusepowered/as/view/ViewLocator;->getInstance()Lcom/fusepowered/as/view/ViewLocator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/view/ViewLocator;->locateView(Ljava/lang/String;)Lcom/fusepowered/as/view/View;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/view/component/ASMraidWebView;

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->bannerWebView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    .line 86
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->expandUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    iput-boolean v2, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useNewWebView:Z

    .line 89
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->bannerWebView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    .line 91
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->mraidBannerContainer:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->mraidBannerContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->close()V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/CloseButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->setOrientationProperties(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useNewWebView:Z

    return v0
.end method

.method static synthetic access$500(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->mraidBannerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->bannerWebView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    return-object v0
.end method

.method private close()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    new-instance v1, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;-><init>(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method private setOrientationProperties(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    new-instance v1, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$5;-><init>(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method


# virtual methods
.method public buildInterstitialPlayer()V
    .locals 7

    .prologue
    const/high16 v6, -0x1000000

    const/4 v2, -0x1

    .line 100
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 101
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    .line 107
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 111
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 114
    new-instance v1, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$1;-><init>(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)V

    .line 122
    new-instance v0, Lcom/fusepowered/as/view/component/CloseButton;

    iget-object v2, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v2}, Lcom/fusepowered/as/view/component/CloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    .line 125
    new-instance v0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$2;-><init>(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)V

    .line 133
    iget-boolean v2, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useNewWebView:Z

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 135
    const-string v3, "providerAd"

    iget-object v4, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "controllerId"

    iget-object v4, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->controllerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v3, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    iget-object v4, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    iget-object v5, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;-><init>(Landroid/content/Context;Ljava/util/Properties;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/controller/listener/SetVisibilityListener;)V

    .line 138
    invoke-virtual {v3, v1}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->setOnCloseListener(Lcom/fusepowered/as/controller/listener/OnCloseListener;)V

    .line 139
    new-instance v0, Lcom/fusepowered/as/view/component/ASMraidWebView;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    .line 141
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setIsExpandedBannerWithUrl()V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->EXPANDED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;)V

    .line 149
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0, v6}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setBackgroundColor(I)V

    .line 152
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    new-instance v1, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$3;-><init>(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setOnSetOrientationPropertiesListener(Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;)V

    .line 160
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useCustomClose:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useCustomClose:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(Z)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 174
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getMraidJavascriptInterfaceListener()Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->setOnCloseListener(Lcom/fusepowered/as/controller/listener/OnCloseListener;)V

    goto :goto_0

    .line 161
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->fireViewableChange(Z)V

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->onPause()V

    .line 243
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->firstOnResume:Z

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->firstOnResume:Z

    .line 254
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->onResume()V

    .line 257
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->fireViewableChange(Z)V

    goto :goto_0
.end method

.method public playInterstitial()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 189
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 190
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->useNewWebView:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->expandUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-virtual {v2}, Lcom/fusepowered/as/model/ad/MraidProviderAd;->getHTML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/as/view/component/ASMraidWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->bannerWebView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->EXPANDED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;)V

    .line 195
    :cond_0
    return-void
.end method

.method public registerEvents()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    new-instance v1, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$4;-><init>(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method
