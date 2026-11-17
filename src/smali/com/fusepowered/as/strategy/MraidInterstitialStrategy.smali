.class public final Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;
.super Ljava/lang/Object;
.source "MraidInterstitialStrategy.java"

# interfaces
.implements Lcom/fusepowered/as/strategy/InterstitialStrategy;


# instance fields
.field private activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

.field private ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

.field private closeButton:Lcom/fusepowered/as/view/component/CloseButton;

.field private controllerId:Ljava/lang/String;

.field private firstOnResume:Z

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private useCustomClose:Z

.field private webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

.field private webViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/model/ad/MraidProviderAd;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->firstOnResume:Z

    .line 66
    iput-object p1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    .line 67
    const-string v0, "controllerId"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->controllerId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 69
    iput-object p3, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    .line 70
    const-string v0, "mraidExpandCustomClose"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->useCustomClose:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->close()V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/CloseButton;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->setOrientationProperties(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    return-object v0
.end method

.method private close()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->HIDDEN:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;)V

    .line 181
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 182
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->finish()V

    .line 183
    return-void
.end method

.method private setOrientationProperties(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    new-instance v1, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;-><init>(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method


# virtual methods
.method public buildInterstitialPlayer()V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/4 v2, -0x1

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 82
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 90
    new-instance v3, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$1;-><init>(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)V

    .line 98
    new-instance v0, Lcom/fusepowered/as/view/component/CloseButton;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    .line 101
    new-instance v6, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$2;

    invoke-direct {v6, p0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$2;-><init>(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)V

    .line 109
    new-instance v0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    iget-object v2, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    iget-object v4, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    iget-object v5, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->controllerId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;-><init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/controller/listener/OnCloseListener;Lcom/fusepowered/as/model/ad/MraidProviderAd;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/SetVisibilityListener;)V

    .line 111
    new-instance v1, Lcom/fusepowered/as/view/component/ASMraidWebView;

    iget-object v2, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    invoke-direct {v1, v2, v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;)V

    iput-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    .line 112
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0, v7}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setBackgroundColor(I)V

    .line 115
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    new-instance v1, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$3;-><init>(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setOnSetOrientationPropertiesListener(Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;)V

    .line 123
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->useCustomClose:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->useCustomClose:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(Z)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->activity:Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 136
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->fireViewableChange(Z)V

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->onPause()V

    .line 191
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->firstOnResume:Z

    if-eqz v0, :cond_1

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->firstOnResume:Z

    .line 202
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->onResume()V

    .line 206
    :cond_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->fireViewableChange(Z)V

    goto :goto_0
.end method

.method public playInterstitial()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 153
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 155
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->webView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/MraidProviderAd;->getHTML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->loadData(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public registerEvents()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    new-instance v1, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$4;-><init>(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method
