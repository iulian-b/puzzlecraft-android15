.class final Lcom/fusepowered/l1/AdBrowseLayout;
.super Landroid/widget/RelativeLayout;
.source "AdBrowseLayout.java"


# instance fields
.field private final mAdDetailWebview:Lcom/fusepowered/l1/BrowserWebView;

.field private final mBackBtn:Landroid/widget/Button;

.field private final mCloseBtn:Landroid/widget/Button;

.field private final mFooterView:Landroid/widget/RelativeLayout;

.field private final mNativeBtn:Landroid/widget/Button;

.field private final mProgressBtn:Landroid/widget/ProgressBar;

.field private final mRefreshBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/fusepowered/l1/AdBrowseLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v6, Lcom/fusepowered/l1/BrowserWebView;

    invoke-direct {v6, p1}, Lcom/fusepowered/l1/BrowserWebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mAdDetailWebview:Lcom/fusepowered/l1/BrowserWebView;

    .line 34
    iget-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mAdDetailWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {v6, v3}, Lcom/fusepowered/l1/BrowserWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mAdDetailWebview:Lcom/fusepowered/l1/BrowserWebView;

    invoke-virtual {p0, v6}, Lcom/fusepowered/l1/AdBrowseLayout;->addView(Landroid/view/View;)V

    .line 37
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mFooterView:Landroid/widget/RelativeLayout;

    .line 38
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/AdBrowseLayout;->configFooterView(Landroid/content/Context;)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "buttonsContainer":Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lcom/fusepowered/l1/AdBrowseLayout;->configButtonsContainer(Landroid/widget/LinearLayout;)V

    .line 43
    invoke-static {}, Lcom/fusepowered/l1/utilites/Dimensions;->getInstance()Lcom/fusepowered/l1/utilites/Dimensions;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/fusepowered/l1/utilites/Dimensions;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v6, 0x5

    .line 44
    .local v0, "buttonWidth":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v2, "buttons_params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/fusepowered/l1/utilites/Dimensions;->getInstance()Lcom/fusepowered/l1/utilites/Dimensions;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/fusepowered/l1/utilites/Dimensions;->getHeaderHeight(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 48
    .local v5, "size":I
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v4, "pb_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mProgressBtn:Landroid/widget/ProgressBar;

    .line 52
    invoke-direct {p0, p1, v1, v2, v4}, Lcom/fusepowered/l1/AdBrowseLayout;->configProgressButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 54
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mBackBtn:Landroid/widget/Button;

    .line 55
    invoke-direct {p0, p1, v1, v2, v4}, Lcom/fusepowered/l1/AdBrowseLayout;->configBackButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 57
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mRefreshBtn:Landroid/widget/Button;

    .line 58
    invoke-direct {p0, p1, v1, v2, v4}, Lcom/fusepowered/l1/AdBrowseLayout;->configRefreshButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 60
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mNativeBtn:Landroid/widget/Button;

    .line 61
    invoke-direct {p0, p1, v1, v2, v4}, Lcom/fusepowered/l1/AdBrowseLayout;->configNativeButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 63
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mCloseBtn:Landroid/widget/Button;

    .line 64
    invoke-direct {p0, p1, v1, v2, v4}, Lcom/fusepowered/l1/AdBrowseLayout;->configCloseButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 66
    iget-object v6, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/fusepowered/l1/AdBrowseLayout;->initBottomWhiteLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method private configBackButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonsContainer"    # Landroid/widget/LinearLayout;
    .param p3, "buttons_params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p4, "pb_params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 110
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "backLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mBackBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_BACK_INACTIVE:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mBackBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_BACK_INACTIVE:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private configButtonsContainer(Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "buttonsContainer"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v1, -0x1

    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v0, "buttonsContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 85
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private configCloseButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonsContainer"    # Landroid/widget/LinearLayout;
    .param p3, "buttons_params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p4, "pb_params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 155
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "closeLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mCloseBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_CLOSE:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mCloseBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_CLOSE:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private configFooterView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {}, Lcom/fusepowered/l1/utilites/Dimensions;->getInstance()Lcom/fusepowered/l1/utilites/Dimensions;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Dimensions;->getHeaderHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v0, "footer_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/AdBrowseLayout;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method private configNativeButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonsContainer"    # Landroid/widget/LinearLayout;
    .param p3, "buttons_params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p4, "pb_params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 140
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "nativeLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mNativeBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_NATIVE_BROWSER:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mNativeBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mNativeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mNativeBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_NATIVE_BROWSER:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private configProgressButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonsContainer"    # Landroid/widget/LinearLayout;
    .param p3, "buttons_params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p4, "pb_params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 73
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "progressLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mProgressBtn:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mProgressBtn:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method private configRefreshButton(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonsContainer"    # Landroid/widget/LinearLayout;
    .param p3, "buttons_params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p4, "pb_params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 125
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "refreshLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mRefreshBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_REFRESH:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mRefreshBtn:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mRefreshBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mRefreshBtn:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_REFRESH:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-virtual {v2, p1}, Lcom/fusepowered/l1/utilites/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initBottomWhiteLineView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 98
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "whiteLine":Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v1, "whiteLineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mBackBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getCloseButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mCloseBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getFooter()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mFooterView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getNativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mNativeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mProgressBtn:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRefreshButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mRefreshBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getWebView()Lcom/fusepowered/l1/BrowserWebView;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowseLayout;->mAdDetailWebview:Lcom/fusepowered/l1/BrowserWebView;

    return-object v0
.end method
