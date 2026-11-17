.class public Lcom/fusepowered/l1/LoopMeBannerView;
.super Landroid/widget/RelativeLayout;
.source "LoopMeBannerView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHeight:I

.field private mWebView:Lcom/fusepowered/l1/AdView;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/fusepowered/l1/LoopMeBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/LoopMeBannerView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/LoopMeBannerView;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/l1/LoopMeBannerView;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/LoopMeBannerView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/l1/LoopMeBannerView;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/LoopMeBannerView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v1, Lcom/fusepowered/l1/AdView;

    invoke-direct {v1, p1}, Lcom/fusepowered/l1/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWebView:Lcom/fusepowered/l1/AdView;

    .line 61
    iget v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mHeight:I

    if-nez v1, :cond_1

    .line 62
    :cond_0
    sget-object v1, Lcom/fusepowered/l1/LoopMeBannerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Banner size is 0. Use setViewSize(width, height)"

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWebView:Lcom/fusepowered/l1/AdView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/fusepowered/l1/AdView;->setBackgroundColor(I)V

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWidth:I

    iget v2, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v0, "paramas_webview":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/l1/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/LoopMeBannerView;->addView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method private parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 38
    const/4 v3, 0x3

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 43
    .local v0, "attrsArray":[I
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 44
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 45
    .local v1, "id":I
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWidth:I

    .line 46
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mHeight:I

    .line 48
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void

    .line 38
    :array_0
    .array-data 4
        0x10100d0
        0x10100f4
        0x10100f5
    .end array-data
.end method


# virtual methods
.method getWebView()Lcom/fusepowered/l1/AdView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWebView:Lcom/fusepowered/l1/AdView;

    return-object v0
.end method

.method public setViewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWidth:I

    .line 53
    iput p2, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mHeight:I

    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWidth:I

    iget v2, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v0, "paramas_webview":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/l1/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method setWebViewClient(Lcom/fusepowered/l1/AdWebViewBridge;)V
    .locals 1
    .param p1, "client"    # Lcom/fusepowered/l1/AdWebViewBridge;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBannerView;->mWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 73
    return-void
.end method
