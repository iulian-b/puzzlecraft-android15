.class public Lcom/fusepowered/sa/android/publish/adinformation/c;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

.field private g:Lcom/fusepowered/sa/android/publish/adinformation/d;

.field private h:Lcom/fusepowered/sa/android/publish/adinformation/d;

.field private i:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

.field private j:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;

.field private n:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Lcom/fusepowered/sa/android/publish/adinformation/b;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/c$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/adinformation/c$1;-><init>(Lcom/fusepowered/sa/android/publish/adinformation/c;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->d:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->e:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->i:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->l:Landroid/os/Handler;

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/c$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/adinformation/c$2;-><init>(Lcom/fusepowered/sa/android/publish/adinformation/c;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->j:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {p0, p2, p4}, Lcom/fusepowered/sa/android/publish/adinformation/c;->a(Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/adinformation/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/adinformation/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->k:Z

    return p1
.end method

.method private b()V
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->i:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->a()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/fusepowered/sa/android/publish/adinformation/d;

    move-result-object v0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->i:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/fusepowered/sa/android/publish/adinformation/d;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v6

    invoke-static {v5, v6}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->c()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v7}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->c()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v5

    invoke-static {v3, v5}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->c()I

    move-result v6

    invoke-static {v5, v6}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v9, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->n:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v3, v9}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v0

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->n:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;->getAnimationStartMultiplier()I

    move-result v2

    mul-int/2addr v2, v0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->k:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/adinformation/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->k:Z

    return v0
.end method

.method private c()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->h:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v0

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->g:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->n:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;->getAnimationStartMultiplier()I

    move-result v3

    mul-int/2addr v3, v0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v3

    int-to-float v4, v3

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/adinformation/c$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/adinformation/c$4;-><init>(Lcom/fusepowered/sa/android/publish/adinformation/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/adinformation/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->c()V

    return-void
.end method

.method static synthetic d(Lcom/fusepowered/sa/android/publish/adinformation/c;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/fusepowered/sa/android/publish/adinformation/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/fusepowered/sa/android/publish/adinformation/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->a()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/adinformation/b;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/adinformation/c;->setSize(Lcom/fusepowered/sa/android/publish/adinformation/a$b;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Landroid/content/Context;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->a()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/fusepowered/sa/android/publish/adinformation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->g:Lcom/fusepowered/sa/android/publish/adinformation/d;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/fusepowered/sa/android/publish/adinformation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->h:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/adinformation/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/adinformation/b;->c()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->n:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    const v1, 0x57f00001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    const-string v1, "infoExtended"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    const v1, 0x57f00002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->g:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->h:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->g:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->c()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->g:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/adinformation/d;->c()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->c()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->g:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->g:Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/adinformation/d;->c()I

    move-result v4

    invoke-static {v3, v4}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->n:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v2, v1}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->a()V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/sa/android/publish/adinformation/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->f:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->j:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->n:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    goto/16 :goto_0
.end method

.method protected setOnInfoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/c$3;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/sa/android/publish/adinformation/c$3;-><init>(Lcom/fusepowered/sa/android/publish/adinformation/c;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSize(Lcom/fusepowered/sa/android/publish/adinformation/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/c;->i:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    return-void
.end method
