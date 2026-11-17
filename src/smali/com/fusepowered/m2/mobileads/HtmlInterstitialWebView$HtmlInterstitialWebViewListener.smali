.class Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;
.super Ljava/lang/Object;
.source "HtmlInterstitialWebView.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlInterstitialWebViewListener"
.end annotation


# instance fields
.field private final mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 0
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 36
    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 51
    return-void
.end method

.method public onCollapsed()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 46
    return-void
.end method

.method public onLoaded(Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;)V
    .locals 1
    .param p1, "mHtmlWebView"    # Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 41
    return-void
.end method
