.class public Lcom/fusepowered/m2/mobileads/M2Activity;
.super Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;
.source "MoPubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;
    }
.end annotation


# instance fields
.field private mHtmlInterstitialWebView:Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;-><init>()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mobileads/M2Activity;)Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/M2Activity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method static createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/common/CreativeOrientation;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
    .param p3, "isScrollable"    # Z
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "clickthroughUrl"    # Ljava/lang/String;
    .param p6, "orientation"    # Lcom/fusepowered/m2/common/CreativeOrientation;
    .param p7, "broadcastIdentifier"    # J

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/m2/mobileads/M2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "Scrollable"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v1, "Clickthrough-Url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "Redirect-Url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    const-string v1, "mopub-intent-ad-report"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63
    const-string v1, "com_mopub_orientation"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    return-object v0
.end method

.method static preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
    .param p2, "customEventInterstitialListener"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .param p3, "htmlData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/m2/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    move-result-object v6

    .line 72
    .local v6, "dummyWebView":Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;
    invoke-virtual {v6, v3}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->enablePlugins(Z)V

    .line 73
    new-instance v0, Lcom/fusepowered/m2/mobileads/MoPubActivity$1;

    invoke-direct {v0, p2}, Lcom/fusepowered/m2/mobileads/MoPubActivity$1;-><init>(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v6, v0}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    invoke-virtual {v6, p3}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/common/CreativeOrientation;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
    .param p3, "isScrollable"    # Z
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "clickthroughUrl"    # Ljava/lang/String;
    .param p6, "creativeOrientation"    # Lcom/fusepowered/m2/common/CreativeOrientation;
    .param p7, "broadcastIdentifier"    # J

    .prologue
    .line 44
    invoke-static/range {p0 .. p8}, Lcom/fusepowered/m2/mobileads/M2Activity;->createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/common/CreativeOrientation;J)Landroid/content/Intent;

    move-result-object v1

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "MoPubActivity"

    const-string v3, "MoPubActivity not found - did you declare it in AndroidManifest.xml?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 8

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 91
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "Scrollable"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 92
    .local v3, "isScrollable":Z
    const-string v0, "Redirect-Url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "redirectUrl":Ljava/lang/String;
    const-string v0, "Clickthrough-Url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "clickthroughUrl":Ljava/lang/String;
    const-string v0, "Html-Response-Body"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "htmlResponse":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/M2Activity;->mAdReport:Lcom/fusepowered/m2/common/AdReport;

    new-instance v2, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/fusepowered/m2/mobileads/M2Activity;)V

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/m2/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    .line 97
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0, v6}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com_mopub_orientation"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 109
    .local v0, "orientationExtra":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/fusepowered/m2/common/CreativeOrientation;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    sget-object v1, Lcom/fusepowered/m2/common/CreativeOrientation;->UNDEFINED:Lcom/fusepowered/m2/common/CreativeOrientation;

    .line 114
    .local v1, "requestedOrientation":Lcom/fusepowered/m2/common/CreativeOrientation;
    :goto_0
    invoke-static {p0, v1}, Lcom/fusepowered/m2/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/fusepowered/m2/common/CreativeOrientation;)V

    .line 115
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2Activity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "com.fusepowered.m2.action.interstitial.show"

    invoke-static {p0, v2, v3, v4}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 116
    return-void

    .end local v1    # "requestedOrientation":Lcom/fusepowered/m2/common/CreativeOrientation;
    :cond_1
    move-object v1, v0

    .line 112
    check-cast v1, Lcom/fusepowered/m2/common/CreativeOrientation;

    .restart local v1    # "requestedOrientation":Lcom/fusepowered/m2/common/CreativeOrientation;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    sget-object v1, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->destroy()V

    .line 122
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2Activity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.fusepowered.m2.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 123
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;->onDestroy()V

    .line 124
    return-void
.end method
