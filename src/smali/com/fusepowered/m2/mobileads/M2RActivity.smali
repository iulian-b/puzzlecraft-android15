.class public Lcom/fusepowered/m2/mobileads/M2RActivity;
.super Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;
.source "MraidActivity.java"


# instance fields
.field private mDebugListener:Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMraidController:Lcom/fusepowered/m2/mraid/MraidController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mobileads/M2RActivity;)Lcom/fusepowered/m2/mraid/MraidController;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/M2RActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    return-object v0
.end method

.method protected static createIntent(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "broadcastIdentifier"    # J
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/m2/mobileads/M2RActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    const-string v1, "mopub-intent-ad-report"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method public static preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    new-instance v0, Lcom/fusepowered/m2/mobileads/BaseWebView;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "dummyWebView":Lcom/fusepowered/m2/mobileads/BaseWebView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/BaseWebView;->enablePlugins(Z)V

    .line 49
    new-instance v1, Lcom/fusepowered/m2/mobileads/MraidActivity$1;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/mobileads/MraidActivity$1;-><init>(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    const-string v1, "http://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/m2/mobileads/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Ljava/lang/String;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adreport"    # Lcom/fusepowered/m2/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "broadcastIdentifier"    # J

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fusepowered/m2/mobileads/M2RActivity;->createIntent(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "MraidInterstitial"

    const-string v3, "MraidActivity.class not found. Did you declare MraidActivity in your manifest?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Html-Response-Body"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "htmlData":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 98
    const-string v1, "MraidActivity received a null HTML body. Finishing the activity."

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->finish()V

    .line 100
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 153
    :goto_0
    return-object v1

    .line 103
    :cond_0
    new-instance v1, Lcom/fusepowered/m2/mraid/MraidController;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mAdReport:Lcom/fusepowered/m2/common/AdReport;

    sget-object v3, Lcom/fusepowered/m2/mraid/PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/mraid/PlacementType;

    invoke-direct {v1, p0, v2, v3}, Lcom/fusepowered/m2/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mraid/PlacementType;)V

    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    .line 106
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mDebugListener:Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/mraid/MraidController;->setDebugListener(Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;)V

    .line 107
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    new-instance v2, Lcom/fusepowered/m2/mobileads/MraidActivity$2;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/mobileads/MraidActivity$2;-><init>(Lcom/fusepowered/m2/mobileads/M2RActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/mraid/MraidController;->setMraidListener(Lcom/fusepowered/m2/mraid/MraidController$MraidListener;)V

    .line 142
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    new-instance v2, Lcom/fusepowered/m2/mobileads/MraidActivity$3;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/mobileads/MraidActivity$3;-><init>(Lcom/fusepowered/m2/mobileads/M2RActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/mraid/MraidController;->setUseCustomCloseListener(Lcom/fusepowered/m2/mraid/MraidController$UseCustomCloseListener;)V

    .line 152
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/mraid/MraidController;->loadContent(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mraid/MraidController;->getAdContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v3, 0x1000000

    .line 158
    invoke-super {p0, p1}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.fusepowered.m2.action.interstitial.show"

    invoke-static {p0, v0, v1, v2}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mraid/MraidController;->destroy()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.fusepowered.m2.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 191
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;->onDestroy()V

    .line 192
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mraid/MraidController;->pause(Z)V

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;->onPause()V

    .line 174
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mraid/MraidController;->resume()V

    .line 182
    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;)V
    .locals 1
    .param p1, "debugListener"    # Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mDebugListener:Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;

    .line 197
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RActivity;->mMraidController:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mraid/MraidController;->setDebugListener(Lcom/fusepowered/m2/mraid/MraidWebViewDebugListener;)V

    .line 200
    :cond_0
    return-void
.end method
