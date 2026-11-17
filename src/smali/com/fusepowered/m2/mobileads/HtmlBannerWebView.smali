.class public Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;
.super Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;
.source "HtmlBannerWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;
    }
.end annotation


# static fields
.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.fusepowered.m2.intent.extra.AD_CLICK_DATA"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adReport"    # Lcom/fusepowered/m2/common/AdReport;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;)V

    .line 14
    return-void
.end method


# virtual methods
.method public init(Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "customEventBannerListener"    # Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;
    .param p2, "isScrollable"    # Z
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "clickthroughUrl"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-super {p0, p2}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->init(Z)V

    .line 19
    new-instance v0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    new-instance v1, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;-><init>(Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    invoke-direct {v0, v1, p0, p4, p3}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;-><init>(Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 20
    return-void
.end method
