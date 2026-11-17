.class public Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;
.super Landroid/widget/RelativeLayout;
.source "MessageDialogTitle.java"


# static fields
.field private static final DEFAULT_CLOSE_BUTTON_SIZE:I = 0x1e

.field private static final DEFAULT_ICON_SIZE:I = 0x18

.field private static final DEFAULT_TITLE_TEXT_SIZE:I = 0x10

.field public static final ID_CLOSE:I = 0x108a

.field private static final ID_ICON:I = 0x108c

.field private static final ID_TITLE:I = 0x108b


# instance fields
.field private closeButton:Landroid/widget/ImageView;

.field private icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

.field private titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->init()V

    .line 55
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    .line 69
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    .line 70
    new-instance v0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    .line 72
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    const/16 v1, 0x108b

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setId(I)V

    .line 73
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    const/16 v1, 0x108a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 74
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    const/16 v1, 0x108c

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setId(I)V

    .line 76
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->addView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setupViews()V

    .line 80
    return-void
.end method

.method private setupViews()V
    .locals 7

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x5

    const/4 v1, -0x2

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    const/16 v2, 0x108c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    const/16 v1, 0x108a

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 86
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setPadding(IIII)V

    .line 88
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setTextSize(F)V

    .line 90
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    sget-object v2, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_TITLE_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setTextColor(I)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x1e

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    invoke-virtual {v0, v4, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_CLOSE_BUTTON_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    .line 173
    :cond_1
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    .line 174
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->removeAllViews()V

    .line 175
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getImageLoader()Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;)V

    .line 156
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FeaturedDialogTitle: Unexpected exception caught in setOnCloseClickListener()."

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FeaturedDialogTitle: Unexpected exception caught in setTitle()."

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showIcon(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/16 v5, 0x108a

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 108
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    if-eqz v1, :cond_0

    .line 109
    if-eqz p1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    invoke-virtual {v1, v4}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    const/16 v2, 0x108c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 115
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/custom/views/ScrollingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
