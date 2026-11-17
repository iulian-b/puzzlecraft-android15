.class public Lcom/fusepowered/sa/android/publish/list3d/c;
.super Landroid/widget/AdapterView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field public a:Landroid/content/BroadcastReceiver;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/Adapter;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/VelocityTracker;

.field private n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

.field private o:Ljava/lang/Runnable;

.field private final p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Camera;

.field private t:Landroid/graphics/Matrix;

.field private u:Landroid/graphics/Paint;

.field private v:I

.field private w:F

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "List3DView"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->b:Ljava/lang/String;

    iput v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->p:Ljava/util/LinkedList;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->v:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->w:F

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->x:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->y:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->z:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->A:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->B:Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/c$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/list3d/c$1;-><init>(Lcom/fusepowered/sa/android/publish/list3d/c;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;F)F
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->w:F

    return p1
.end method

.method private a(II)I
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->r:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->r:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33334    # 0.35000002f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    return p1
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private a(F)Landroid/graphics/LightingColorFilter;
    .locals 10

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    const/16 v0, 0xff

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v8, v4

    double-to-int v1, v2

    add-int/lit8 v2, v1, 0x37

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v1, v4

    if-le v2, v0, :cond_0

    move v2, v0

    :cond_0
    if-le v1, v0, :cond_1

    :goto_0
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v1, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;Lcom/fusepowered/sa/android/publish/list3d/Dynamics;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    return-object p1
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(FZ)V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/c$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/list3d/c$3;-><init>(Lcom/fusepowered/sa/android/publish/list3d/c;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->o:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    int-to-float v1, v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a(FFJ)V

    :cond_3
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    mul-int/lit16 v0, v0, 0x10e

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->j:I

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->f()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->requestLayout()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    int-to-float v1, p6

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    invoke-virtual {v0, p8}, Landroid/graphics/Camera;->rotateX(F)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    neg-int v1, p6

    int-to-float v1, v1

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->t:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->t:Landroid/graphics/Matrix;

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->s:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->t:Landroid/graphics/Matrix;

    neg-int v1, p5

    int-to-float v1, v1

    neg-int v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, p7, p7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->t:Landroid/graphics/Matrix;

    add-int v1, p4, p5

    int-to-float v1, v1

    add-int v2, p3, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->u:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->u:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->u:Landroid/graphics/Paint;

    invoke-direct {p0, p8}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(F)Landroid/graphics/LightingColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->f:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->g:I

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->g()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v2, v0

    :goto_0
    if-ne p2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/c;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->x:Z

    return p1
.end method

.method private b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    return v0
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->e:I

    return p1
.end method

.method private b(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(FZ)V

    return-void
.end method

.method private b(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    add-int v3, v0, p1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/c;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->e:I

    add-int/lit8 v2, v2, -0xa

    if-lt v0, v2, :cond_0

    iget v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->e:I

    add-int/lit8 v2, v2, 0xa

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->f:I

    add-int/lit8 v0, v0, -0xa

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->f:I

    add-int/lit8 v0, v0, 0xa

    if-le v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/list3d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->y:Z

    return p1
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->e:I

    return v0
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->f:I

    return p1
.end method

.method private c(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    if-le v0, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p1

    if-gez v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 v3, v0, -0x1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    if-le v3, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    move v0, v3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    if-eqz v1, :cond_3

    if-le v0, v5, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->p:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    if-le v1, v5, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private c(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getCachedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/view/View;I)V

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/view/View;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->f:I

    return v0
.end method

.method static synthetic d(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->j:I

    return p1
.end method

.method private d(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->d(II)V

    return-void
.end method

.method private d(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getCachedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/view/View;I)V

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    invoke-static {}, Lcom/fusepowered/sa/android/publish/f/b;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->j:I

    return v0
.end method

.method static synthetic e(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    return p1
.end method

.method private e()V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->B:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/c$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/list3d/c$2;-><init>(Lcom/fusepowered/sa/android/publish/list3d/c;)V

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/c;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    return v0
.end method

.method static synthetic f(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    return p1
.end method

.method private f()V
    .locals 3

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->j:I

    rem-int/lit8 v0, v0, 0x5a

    const/16 v1, 0x2d

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->j:I

    sub-int v0, v1, v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x10e

    :goto_0
    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->v:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->v:I

    :cond_0
    if-lez v0, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a(F)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->b(F)V

    return-void

    :cond_2
    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->j:I

    add-int/lit8 v1, v1, 0x5a

    sub-int v0, v1, v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x10e

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->v:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->v:I

    goto :goto_1
.end method

.method static synthetic g(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    return v0
.end method

.method static synthetic g(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    return p1
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->q:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/c$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/list3d/c$4;-><init>(Lcom/fusepowered/sa/android/publish/list3d/c;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->q:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->q:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/c;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getCachedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    return v0
.end method

.method static synthetic h(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->g:I

    return p1
.end method

.method private h()V
    .locals 12

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    div-float v3, v0, v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    float-to-double v6, v2

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v10, v3

    mul-double/2addr v8, v10

    int-to-double v10, v1

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    invoke-direct {p0, v4}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/view/View;)I

    move-result v8

    add-int v9, v1, v8

    add-int/2addr v6, v5

    add-int v10, v9, v7

    invoke-virtual {v4, v5, v9, v6, v10}, Landroid/view/View;->layout(IIII)V

    mul-int/lit8 v4, v8, 0x2

    add-int/2addr v4, v7

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    return v0
.end method

.method static synthetic i(Lcom/fusepowered/sa/android/publish/list3d/c;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    return p1
.end method

.method static synthetic j(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    return v0
.end method

.method static synthetic j(Lcom/fusepowered/sa/android/publish/list3d/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(I)V

    return-void
.end method

.method static synthetic k(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->g:I

    return v0
.end method

.method static synthetic k(Lcom/fusepowered/sa/android/publish/list3d/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(I)V

    return-void
.end method

.method static synthetic l(Lcom/fusepowered/sa/android/publish/list3d/c;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    return v0
.end method

.method static synthetic m(Lcom/fusepowered/sa/android/publish/list3d/c;)F
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->w:F

    return v0
.end method

.method static synthetic n(Lcom/fusepowered/sa/android/publish/list3d/c;)Lcom/fusepowered/sa/android/publish/list3d/Dynamics;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->x:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->A:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->z:Z

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-int v3, v5, v8

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float v2, v3, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3fc3333340000000L    # 0.15000000596046448

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fusepowered/sa/android/publish/list3d/c;->j:I

    int-to-float v3, v3

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float/2addr v2, v10

    sub-float v2, v3, v2

    const/high16 v3, 0x42b40000    # 90.0f

    rem-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    move v11, v2

    :goto_1
    const/high16 v2, 0x42340000    # 45.0f

    cmpg-float v2, v11, v2

    if-gez v2, :cond_1

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v10, v11, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v10, v11

    invoke-direct/range {v2 .. v10}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v10, v11

    invoke-direct/range {v2 .. v10}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v10, v11, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    goto :goto_2

    :cond_2
    move v11, v2

    goto :goto_1
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getFirstItemPosition()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    return v0
.end method

.method public getLastItemPosition()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->y:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    :goto_1
    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    invoke-direct {p0, v0, v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(II)V

    :goto_2
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->h()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->e()V

    :cond_3
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->invalidate()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->l:I

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->k:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->h:I

    iget v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->i:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->c(I)V

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->d(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(F)V

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x5dc

    invoke-static {p0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/view/View;J)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(Landroid/view/MotionEvent;)Z

    :cond_3
    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->f:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->a(I)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    if-ne v2, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(II)V

    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->b(F)V

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->d:I

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->w:F

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/view/View;F)V

    :cond_0
    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->c:Landroid/widget/Adapter;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/c;->requestLayout()V

    return-void
.end method

.method public setDynamics(Lcom/fusepowered/sa/android/publish/list3d/Dynamics;)V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a()F

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->b()F

    move-result v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/Dynamics;->a(FFJ)V

    :cond_0
    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->n:Lcom/fusepowered/sa/android/publish/list3d/Dynamics;

    return-void
.end method

.method public setFade(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->z:Z

    return-void
.end method

.method public setHint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->A:Z

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/c;->b:Ljava/lang/String;

    return-void
.end method
