.class public Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAppWall.Banner3D"

.field private static final TIMEOUT_RESTORE:I = 0xc8


# instance fields
.field private adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

.field private ads:Lcom/fusepowered/sa/android/publish/a/a;

.field private adsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private animation:Z

.field private attachedToWindow:Z

.field private camera:Landroid/graphics/Camera;

.field private currentBannerIndex:I

.field private defaultLoad:Z

.field private faces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;",
            ">;"
        }
    .end annotation
.end field

.field private firstRotation:Z

.field private firstRotationFinished:Z

.field private loaded:Z

.field private loading:Z

.field private mAutoRotation:Ljava/lang/Runnable;

.field private matrix:Landroid/graphics/Matrix;

.field private options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

.field private overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

.field private paint:Landroid/graphics/Paint;

.field private rotating:Z

.field private rotation:F

.field private startY:F

.field private touchDown:Z

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startY:F

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotating:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->animation:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startY:F

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotating:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->animation:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startY:F

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotating:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->animation:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startY:F

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotating:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->animation:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)I
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getNextBannerIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loadBanners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)I
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotating:Z

    return v0
.end method

.method static synthetic access$402(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    return v0
.end method

.method static synthetic access$700(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotate(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)F
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    return v0
.end method

.method private addAdInformationLayout()V
    .locals 6

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getSuggestedMinimumWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->j()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getSuggestedMinimumHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->a:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    sget-object v4, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fusepowered/sa/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method private drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    int-to-float v1, p6

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0, p8}, Landroid/graphics/Camera;->rotateX(F)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    neg-int v1, p6

    int-to-float v1, v1

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    neg-int v1, p5

    int-to-float v1, v1

    neg-int v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p7, p7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    add-int v1, p4, p5

    int-to-float v1, v1

    add-int v2, p3, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 21

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->d()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->j()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->k()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getWidth()I

    move-result v2

    sub-int v2, v2, v19

    div-int/lit8 v6, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getHeight()I

    move-result v2

    sub-int v2, v2, v20

    div-int/lit8 v5, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->l()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v4, 0x42340000    # 45.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42340000    # 45.0f

    div-float/2addr v3, v4

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->m()I

    move-result v3

    int-to-double v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v7}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->l()F

    move-result v7

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v9, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->l()F

    move-result v9

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getPreviousBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42340000    # 45.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    div-int/lit8 v7, v19, 0x2

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->n()Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    :cond_1
    div-int/lit8 v7, v19, 0x2

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->n()Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v12

    invoke-direct/range {v2 .. v10}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42ae0000    # 87.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    div-int/lit8 v15, v19, 0x2

    div-int/lit8 v16, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->n()Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v18, v2, v3

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v5

    move v14, v6

    move/from16 v17, v9

    invoke-direct/range {v10 .. v18}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    :cond_4
    div-int/lit8 v7, v19, 0x2

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->n()Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x6

    const-string v3, "Exception onDraw Banner3D"

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    return-object v0
.end method

.method private getCurrentBannerIndex()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    return v0
.end method

.method private getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getNextBannerIndex()I
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private getPreviousBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getTotalBaners()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->initRuntime()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->initDebug()V

    goto :goto_0
.end method

.method private initDebug()V
    .locals 4

    const/4 v3, -0x2

    const/16 v2, 0xa9

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "StartApp Banner3D"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initFaces(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    new-instance v3, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v5

    invoke-direct {v3, v4, p0, v0, v5}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/fusepowered/sa/android/publish/model/AdDetails;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    return-void
.end method

.method private initRuntime()V
    .locals 4

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/adinformation/b;->a()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setBackgroundColor(I)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$2;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private loadBanners(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setBannerSize()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->initFaces(Ljava/util/List;)V

    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->addAdInformationLayout()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->animation:Z

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->animation:Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startRotation()V

    :cond_3
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x6

    const-string v1, "StartAppWall.Banner3DError in banner screen size"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    goto :goto_0
.end method

.method private nextBanner()V
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    return-void
.end method

.method private prevBanner()V
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    return-void
.end method

.method private rotate(F)V
    .locals 3

    const/high16 v2, 0x42b40000    # 90.0f

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->nextBanner()V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    :cond_0
    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->prevBanner()V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->invalidate()V

    return-void
.end method

.method private setBannerSize()Z
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;)Z

    move-result v0

    return v0
.end method

.method private startRotation()V
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public hideBanner()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    return-void
.end method

.method public load()V
    .locals 2

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->ads:Lcom/fusepowered/sa/android/publish/a/a;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->ads:Lcom/fusepowered/sa/android/publish/a/a;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-virtual {v0, v1, p0}, Lcom/fusepowered/sa/android/publish/a/a;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotationFinished:Z

    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startRotation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->attachedToWindow:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->drawFrame(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 0

    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->ads:Lcom/fusepowered/sa/android/publish/a/a;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/a;->getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    check-cast p1, Lcom/fusepowered/sa/android/publish/a/f;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/a/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loadBanners(Ljava/util/List;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;

    iget-boolean v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->getDetails()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->isFirstRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->getCurrentImage()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    iget-object v1, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iget-boolean v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    iget-boolean v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->defaultLoad:Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->init()V

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$4;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;

    invoke-direct {v2, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    iput-boolean v0, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->setDetails(Ljava/util/List;)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->setRotation(F)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->firstRotation:Z

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->setFirstRotation(Z)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->currentBannerIndex:I

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->setCurrentImage(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    iput-object v0, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iput-object v0, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    iput-object v0, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loaded:Z

    iput-boolean v0, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->loading:Z

    iput-boolean v0, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    iput-object v0, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iput-boolean v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startY:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->startY:F

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->prevBanner()V

    :cond_1
    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->touchDown:Z

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->rotating:Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$3;-><init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showBanner()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->visible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->setVisibility(I)V

    return-void
.end method
