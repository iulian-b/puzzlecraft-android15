.class final Lcom/fusepowered/m2/mobileads/MraidActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MraidActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/M2RActivity;->preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$customEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MraidActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MraidActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 53
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MraidActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 67
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
