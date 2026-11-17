.class public Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;
.super Landroid/widget/ImageView;
.source "VastVideoCtaButtonWidget.java"


# instance fields
.field private mCtaButtonDrawable:Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasCompanionAd:Z

.field private mIsVideoComplete:Z

.field private mIsVideoSkippable:Z

.field private final mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoViewId"    # I
    .param p3, "hasCompanionAd"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean p3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mHasCompanionAd:Z

    .line 32
    invoke-static {}, Lcom/fusepowered/m2/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p0, v3}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setId(I)V

    .line 34
    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3, p1}, Lcom/fusepowered/m2/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 35
    .local v2, "width":I
    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3, p1}, Lcom/fusepowered/m2/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 36
    .local v0, "height":I
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3, p1}, Lcom/fusepowered/m2/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 38
    .local v1, "margin":I
    new-instance v3, Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v3, p1}, Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;

    .line 39
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {p0, v3}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51
    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 54
    return-void
.end method

.method private updateLayoutAndVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-boolean v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 86
    .local v0, "currentOrientation":I
    packed-switch v0, :pswitch_data_0

    .line 114
    const-string v1, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout"

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 92
    :pswitch_0
    iget-boolean v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mIsVideoComplete:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mHasCompanionAd:Z

    if-eqz v1, :cond_1

    .line 93
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 104
    :pswitch_2
    const-string v1, "Screen orientation undefined: CTA button widget defaulting to portrait layout"

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v1, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout"

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method getCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;->getCtaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasLandscapeLayoutParams()Z
    .locals 2
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasPortraitLayoutParams()Z
    .locals 2
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method notifyVideoComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    .line 74
    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mIsVideoComplete:Z

    .line 75
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 76
    return-void
.end method

.method notifyVideoSkippable()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    .line 69
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 70
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    .line 61
    return-void
.end method

.method updateCtaText(Ljava/lang/String;)V
    .locals 1
    .param p1, "customCtaText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 65
    return-void
.end method
