.class public Lcom/fusepowered/vast/activity/Postroll;
.super Landroid/widget/RelativeLayout;
.source "Postroll.java"


# static fields
.field private static final BUTTON_HEIGHT:I = 0x4b

.field private static final BUTTON_WIDTH:I = 0x100

.field private static final MARGIN:I = 0x8

.field private static final SCALED_DENSITY:F

.field private static final TEXT_FONT_SIZE:I = 0x18

.field private static final X_HEIGHT:I = 0x1d

.field private static final X_WIDTH:I = 0x1d


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastFrameView:Landroid/widget/ImageView;

.field private mLayerOfDarkness:Landroid/widget/LinearLayout;

.field private mLearnText:Landroid/widget/TextView;

.field private mVastModel:Lcom/fusepowered/vast/model/VASTModel;

.field private mXButtonView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fusepowered/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/fusepowered/vast/activity/Postroll;->SCALED_DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/fusepowered/vast/activity/Postroll;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/fusepowered/vast/activity/Postroll;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/fusepowered/vast/activity/Postroll;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private setUpLastFrameView(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 105
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/vast/activity/Postroll;->mLastFrameView:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/fusepowered/vast/activity/Postroll;->mLastFrameView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/fusepowered/vast/activity/Postroll;->mLastFrameView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/vast/activity/Postroll;->addView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method private setUpLayerOfDarkness(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 71
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    const/16 v2, 0xc0

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    iget-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/fusepowered/vast/activity/Postroll;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method private setUpLearn(Landroid/content/Context;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 80
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    invoke-virtual {v4}, Lcom/fusepowered/vast/model/VASTModel;->getVideoClicks()Lcom/fusepowered/vast/model/VideoClicks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/vast/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "clickThroughUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 84
    const/high16 v4, 0x43800000    # 256.0f

    invoke-static {v4}, Lcom/fusepowered/vast/util/Assets;->convertToDps(F)I

    move-result v3

    .line 85
    .local v3, "width":I
    const/high16 v4, 0x42960000    # 75.0f

    invoke-static {v4}, Lcom/fusepowered/vast/util/Assets;->convertToDps(F)I

    move-result v1

    .line 86
    .local v1, "height":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    .line 91
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    const-string v5, "LEARN MORE"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    const-string v5, "sans-serif-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/Postroll;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/vast/util/Assets;->getPostrollButton(Landroid/content/res/Resources;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fusepowered/vast/util/Assets;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/fusepowered/vast/activity/Postroll;->addView(Landroid/view/View;)V

    .line 102
    .end local v1    # "height":I
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private setUpX(Landroid/content/Context;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41e80000    # 29.0f

    .line 111
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mXButtonView:Landroid/widget/ImageView;

    .line 112
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mXButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/Postroll;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/vast/util/Assets;->getXButton(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fusepowered/vast/util/Assets;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mXButtonView:Landroid/widget/ImageView;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v5}, Lcom/fusepowered/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    .line 114
    invoke-static {v6}, Lcom/fusepowered/vast/util/Assets;->convertToDps(F)I

    move-result v3

    .line 115
    .local v3, "width":I
    invoke-static {v6}, Lcom/fusepowered/vast/util/Assets;->convertToDps(F)I

    move-result v0

    .line 116
    .local v0, "height":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/fusepowered/vast/util/Assets;->convertToDps(F)I

    move-result v1

    .line 119
    .local v1, "margin":I
    invoke-virtual {v2, v7, v1, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mXButtonView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v4, p0, Lcom/fusepowered/vast/activity/Postroll;->mXButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/fusepowered/vast/activity/Postroll;->addView(Landroid/view/View;)V

    .line 122
    return-void
.end method


# virtual methods
.method public getLearnMoreButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/vast/activity/Postroll;->mLearnText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getXButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fusepowered/vast/activity/Postroll;->mXButtonView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/fusepowered/vast/activity/Postroll;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/fusepowered/vast/activity/Postroll;->setUpLastFrameView(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/fusepowered/vast/activity/Postroll;->setUpLayerOfDarkness(Landroid/content/Context;)V

    .line 66
    iget-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/fusepowered/vast/activity/Postroll;->setUpLearn(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/fusepowered/vast/activity/Postroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/fusepowered/vast/activity/Postroll;->setUpX(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public setVastModel(Lcom/fusepowered/vast/model/VASTModel;)V
    .locals 0
    .param p1, "mVastModel"    # Lcom/fusepowered/vast/model/VASTModel;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/fusepowered/vast/activity/Postroll;->mVastModel:Lcom/fusepowered/vast/model/VASTModel;

    .line 134
    return-void
.end method
