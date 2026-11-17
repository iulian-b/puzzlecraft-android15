.class public Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;
.super Landroid/app/Activity;
.source "FuseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;,
        Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;,
        Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;
    }
.end annotation


# static fields
.field public static final EXTRA_AD_ACTION:Ljava/lang/String; = "AD_ACTION"

.field public static final EXTRA_AD_HTML:Ljava/lang/String; = "AD_HTML"

.field public static final EXTRA_AD_ID:Ljava/lang/String; = "AD_ID"

.field public static final EXTRA_AD_LHEIGHT:Ljava/lang/String; = "LH"

.field public static final EXTRA_AD_LWIDTH:Ljava/lang/String; = "LW"

.field public static final EXTRA_AD_ORIENTATION:Ljava/lang/String; = "o"

.field public static final EXTRA_AD_PHEIGHT:Ljava/lang/String; = "PH"

.field public static final EXTRA_AD_PWIDTH:Ljava/lang/String; = "PW"


# instance fields
.field private action:Ljava/lang/String;

.field private adId:I

.field private final interstitialFetcher:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

.field private lHeight:I

.field private lWidth:I

.field private layout:Landroid/widget/RelativeLayout;

.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private orientation:I

.field private pHeight:I

.field private pWidth:I

.field private params:Landroid/widget/RelativeLayout$LayoutParams;

.field private webView:Landroid/webkit/WebView;

.field private webViewScale:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    invoke-direct {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;-><init>()V

    invoke-direct {p0, v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;-><init>(Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;)V
    .locals 0
    .param p1, "interstitialFetcher"    # Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->interstitialFetcher:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    .line 56
    return-void
.end method


# virtual methods
.method public calculateAdSize(ILcom/fusepowered/ads/OrientationProvider;IIII)Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "currentOrientationProvider"    # Lcom/fusepowered/ads/OrientationProvider;
    .param p3, "pWidth"    # I
    .param p4, "pHeight"    # I
    .param p5, "lWidth"    # I
    .param p6, "lHeight"    # I

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 159
    invoke-virtual {p2}, Lcom/fusepowered/ads/OrientationProvider;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    move v0, p4

    .line 161
    .local v0, "adHeight":I
    move v1, p3

    .line 174
    .local v1, "adWidth":I
    :goto_0
    new-instance v2, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;

    invoke-direct {v2, v1, v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;-><init>(II)V

    return-object v2

    .line 163
    .end local v0    # "adHeight":I
    .end local v1    # "adWidth":I
    :cond_0
    move v0, p6

    .line 164
    .restart local v0    # "adHeight":I
    move v1, p5

    .restart local v1    # "adWidth":I
    goto :goto_0

    .line 166
    .end local v0    # "adHeight":I
    .end local v1    # "adWidth":I
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 167
    move v0, p4

    .line 168
    .restart local v0    # "adHeight":I
    move v1, p3

    .restart local v1    # "adWidth":I
    goto :goto_0

    .line 170
    .end local v0    # "adHeight":I
    .end local v1    # "adWidth":I
    :cond_2
    move v0, p6

    .line 171
    .restart local v0    # "adHeight":I
    move v1, p5

    .restart local v1    # "adWidth":I
    goto :goto_0
.end method

.method public calculateWebViewScale(Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;Landroid/util/DisplayMetrics;)I
    .locals 1
    .param p1, "adSize"    # Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 123
    const/16 v0, 0x64

    return v0
.end method

.method public loadWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->interstitialFetcher:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;->fetchInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 223
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->finish()V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/16 v11, 0x11

    const/4 v10, -0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 67
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 68
    .local v9, "extras":Landroid/os/Bundle;
    if-nez v9, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->finish()V

    .line 119
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 73
    const-string v0, "AD_ACTION"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->action:Ljava/lang/String;

    .line 74
    const-string v0, "AD_ID"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->adId:I

    .line 76
    const-string v0, "o"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->orientation:I

    .line 77
    const-string v0, "PW"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->pWidth:I

    .line 78
    const-string v0, "PH"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->pHeight:I

    .line 79
    const-string v0, "LW"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->lWidth:I

    .line 80
    const-string v0, "LH"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->lHeight:I

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layout:Landroid/widget/RelativeLayout;

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 86
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->loadWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webView:Landroid/webkit/WebView;

    .line 93
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;

    invoke-direct {v1, p0, p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;-><init>(Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->finish()V

    goto/16 :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 100
    new-instance v2, Lcom/fusepowered/ads/OrientationProvider;

    invoke-direct {v2, p0}, Lcom/fusepowered/ads/OrientationProvider;-><init>(Landroid/content/Context;)V

    .line 101
    .local v2, "currentOrientationProvider":Lcom/fusepowered/ads/OrientationProvider;
    iget v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->orientation:I

    iget v3, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->pWidth:I

    iget v4, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->pHeight:I

    iget v5, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->lWidth:I

    iget v6, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->lHeight:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->calculateAdSize(ILcom/fusepowered/ads/OrientationProvider;IIII)Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;

    move-result-object v7

    .line 102
    .local v7, "adSize":Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 109
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v7, v8}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->calculateWebViewScale(Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webViewScale:I

    .line 110
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webView:Landroid/webkit/WebView;

    iget v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->webViewScale:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 112
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->interstitialFetcher:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;->fetchInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->onAdDisplayed()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->interstitialFetcher:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;->fetchInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->onAdClosed()V

    .line 231
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    return-void
.end method

.method public onReceiveError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 188
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->interstitialFetcher:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;->fetchInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->onAdClicked()V

    .line 213
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 200
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v1}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->interstitialFetcher:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$InterstitialFetcher;->fetchInterstitial()Lcom/fusepowered/ads/adapters/FuseInterstitial;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/FuseInterstitial;->onAdClicked()V

    goto :goto_0

    .line 207
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exit://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->finish()V

    goto :goto_0
.end method
