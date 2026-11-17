.class public Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;,
        Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;
    }
.end annotation


# static fields
.field private static final ID_WEBVIEW:I = 0x9876541

.field private static final TAG:Ljava/lang/String; = "StartAppWall.BannerHtml"

.field private static final TIMEOUT_RESTART:I = 0x32

.field private static final TIMEOUT_SMART_REDIRECT:I = 0x1388


# instance fields
.field private adHtml:Lcom/fusepowered/sa/android/publish/a/b;

.field private adInformationContatiner:Landroid/widget/RelativeLayout;

.field private adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

.field private adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

.field private attachedToWindow:Z

.field private defaultLoad:Z

.field private loaded:Z

.field private options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

.field private prevAdId:Ljava/lang/String;

.field private sentImpression:Z

.field private size:Lcom/fusepowered/sa/android/publish/banner/a;

.field private task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

.field private timer:Ljava/util/Timer;

.field private visible:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    iput-boolean p2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    iput-boolean p2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->reload()V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Lcom/fusepowered/sa/android/publish/banner/a;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/fusepowered/sa/android/publish/banner/a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    return v0
.end method

.method static synthetic access$600(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    return v0
.end method

.method static synthetic access$700(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Lcom/fusepowered/sa/android/publish/a/b;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    return-object v0
.end method

.method private addAdInformationLayout()V
    .locals 6

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->a:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    sget-object v4, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v5}, Lcom/fusepowered/sa/android/publish/a/b;->getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fusepowered/sa/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cancelReloadTask()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;->cancel()Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private getAvailableSize()Landroid/graphics/Point;
    .locals 6

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v3, v0, Lcom/fusepowered/sa/android/publish/banner/Banner;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartAppWall.BannerHtml============ exit Application Size ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] ========="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const/16 v3, 0x12c

    iput v3, v2, Landroid/graphics/Point;->x:I

    const/16 v3, 0x32

    iput v3, v2, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private init()V
    .locals 6

    const/16 v5, 0x12c

    const/16 v4, 0x32

    const/4 v3, -0x2

    const/16 v1, 0xa9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/a;

    invoke-direct {v0, v5, v4}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/fusepowered/sa/android/publish/banner/a;

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    const v1, 0x9876541

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "StartApp Standard Banner"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private loadHtml()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private makeImpression()V
    .locals 2

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a/b;->getTrackingUrls()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "StartAppWall.BannerHtmlLoading from network"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getAvailableSize()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    sget-object v2, Lcom/fusepowered/sa/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/a/b;->setState(Lcom/fusepowered/sa/android/publish/Ad$AdState;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/sa/android/publish/a/b;->setSize(II)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-virtual {v0, v1, p0}, Lcom/fusepowered/sa/android/publish/a/b;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    return-void
.end method

.method private scheduleReloadTask()V
    .locals 6

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;->cancel()Z

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->h()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->h()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private setSize(II)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getAvailableSize()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-lt v2, p1, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v0, p2, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/fusepowered/sa/android/publish/banner/a;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/banner/a;->a(II)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/fusepowered/sa/android/publish/banner/a;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/fusepowered/sa/android/publish/banner/a;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v2

    invoke-static {v0, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    invoke-virtual {p0, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_2
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    goto :goto_1

    :cond_2
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method


# virtual methods
.method public hideBanner()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    return-void
.end method

.method public load()V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->scheduleReloadTask()V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->reload()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->scheduleReloadTask()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->cancelReloadTask()V

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 0

    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x3

    const-string v0, "StartAppWall.BannerHtmlHtml Ad Recievied OK"

    invoke-static {v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@adId@"

    const-string v2, "@adId@"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loadHtml()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@width@"

    const-string v2, "@width@"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/fusepowered/sa/android/publish/a/b;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@height@"

    const-string v3, "@height@"

    invoke-static {v1, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setSize(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->addAdInformationLayout()V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->makeImpression()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    :cond_2
    const-string v0, "StartAppWall.BannerHtmlDone Loading HTML Banner"

    invoke-static {v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v0, "StartAppWall.BannerHtmlError Casting width & height from HTML"

    invoke-static {v5, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->addAdInformationLayout()V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->makeImpression()V

    goto :goto_0

    :cond_5
    const-string v0, "StartAppWall.BannerHtmlNo Banner recieved"

    invoke-static {v5, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public showBanner()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    return-void
.end method
