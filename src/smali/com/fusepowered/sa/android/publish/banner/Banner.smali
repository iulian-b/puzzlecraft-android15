.class public Lcom/fusepowered/sa/android/publish/banner/Banner;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/banner/Banner$3;,
        Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;,
        Lcom/fusepowered/sa/android/publish/banner/Banner$BType;
    }
.end annotation


# static fields
.field private static final BANNER_3D_ID:I = 0x9876543

.field private static final BANNER_REG_ID:I = 0x9876542

.field private static final TAG:Ljava/lang/String; = "StartAppWall.Banner"


# instance fields
.field private bFirstTime:Z

.field private bVisible:Z

.field private banner3D:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

.field private bannerHtml:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

.field private options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

.field private type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bVisible:Z

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/banner/Banner;->init(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bVisible:Z

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/banner/Banner;->init(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bVisible:Z

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/banner/Banner;->init(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bVisible:Z

    invoke-direct {p0, p2}, Lcom/fusepowered/sa/android/publish/banner/Banner;->init(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/sa/android/publish/banner/Banner;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->init_step2()V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/sa/android/publish/banner/Banner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    return v0
.end method

.method static synthetic access$102(Lcom/fusepowered/sa/android/publish/banner/Banner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/Banner$BType;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fusepowered/sa/android/publish/banner/Banner;Lcom/fusepowered/sa/android/publish/banner/Banner$BType;)Lcom/fusepowered/sa/android/publish/banner/Banner$BType;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->banner3D:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bannerHtml:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/sa/android/publish/banner/Banner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bVisible:Z

    return v0
.end method

.method private init(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 5

    const/4 v4, -0x2

    const/16 v3, 0xa9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->banner3D:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bannerHtml:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->setVisibility(I)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/Banner$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/Banner$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/Banner;)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->loadFromServer(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;ZLcom/fusepowered/sa/android/publish/c/p;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->banner3D:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bannerHtml:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->setMinimumWidth(I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->setMinimumHeight(I)V

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "StartApp Banner"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private init_step2()V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->banner3D:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    const v1, 0x9876543

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setId(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bannerHtml:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    const v1, 0x9876542

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bannerHtml:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->banner3D:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/Banner$2;-><init>(Lcom/fusepowered/sa/android/publish/banner/Banner;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/Banner;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public hideBanner()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bVisible:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iget-boolean v0, p1, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->bFirstTime:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bFirstTime:Z

    iput-boolean v0, v1, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->bFirstTime:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-object v0, v1, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    return-object v1
.end method

.method public showBanner()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner;->bVisible:Z

    return-void
.end method
