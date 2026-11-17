.class Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;
.super Ljava/lang/Object;
.source "HtmlBannerWebView.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlBannerWebViewListener"
.end annotation


# instance fields
.field private final mCustomEventBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0
    .param p1, "customEventBannerListener"    # Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 42
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 47
    return-void
.end method

.method public onFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 37
    return-void
.end method

.method public onLoaded(Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;)V
    .locals 1
    .param p1, "htmlWebView"    # Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 32
    return-void
.end method
