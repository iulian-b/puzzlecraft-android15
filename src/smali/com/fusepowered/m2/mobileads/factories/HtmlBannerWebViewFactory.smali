.class public Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;
.super Ljava/lang/Object;
.source "HtmlBannerWebViewFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
    .param p2, "customEventBannerListener"    # Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;
    .param p3, "isScrollable"    # Z
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "clickthroughUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;->internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    sput-object p0, Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/HtmlBannerWebViewFactory;

    .line 38
    return-void
.end method


# virtual methods
.method public internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
    .param p3, "customEventBannerListener"    # Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;
    .param p4, "isScrollable"    # Z
    .param p5, "redirectUrl"    # Ljava/lang/String;
    .param p6, "clickthroughUrl"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;)V

    .line 31
    .local v0, "htmlBannerWebView":Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/fusepowered/m2/mobileads/HtmlBannerWebView;->init(Lcom/fusepowered/m2/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method
