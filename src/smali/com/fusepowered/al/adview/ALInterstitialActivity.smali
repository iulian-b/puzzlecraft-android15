.class public Lcom/fusepowered/al/adview/ALInterstitialActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/fusepowered/al/impl/adview/u;


# static fields
.field public static final KEY_WRAPPER_ID:Ljava/lang/String; = "com.fusepowered.al.interstitial.wrapper_id"

.field public static volatile lastKnownWrapper:Lcom/fusepowered/al/impl/adview/ad;


# instance fields
.field private volatile A:Ljava/util/UUID;

.field private a:Lcom/fusepowered/al/adview/AppLovinAdView;

.field private b:Lcom/fusepowered/al/impl/adview/ad;

.field private volatile c:Z

.field private d:Lcom/fusepowered/al/sdk/AppLovinLogger;

.field private e:Lcom/fusepowered/al/impl/sdk/bd;

.field private f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

.field private volatile g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private q:Z

.field private r:Landroid/os/Handler;

.field private s:Landroid/widget/FrameLayout;

.field private t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

.field private u:Lcom/fusepowered/al/impl/adview/s;

.field private v:Landroid/view/View;

.field private w:Lcom/fusepowered/al/impl/adview/s;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->lastKnownWrapper:Lcom/fusepowered/al/impl/adview/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c:Z

    invoke-static {}, Lcom/fusepowered/al/impl/sdk/cb;->a()Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->h:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->i:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->j:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->k:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->l:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->m:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->o:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->p:Z

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->q:Z

    return-void
.end method

.method private static a(Landroid/view/Display;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/AppLovinVideoView;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    return-object v0
.end method

.method static synthetic a(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    return-object p1
.end method

.method private a(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/fusepowered/al/impl/sdk/bd;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_to_right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(FFF)V

    return-void

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method private a(FFF)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-static {p3}, Lcom/fusepowered/al/impl/sdk/cb;->b(F)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/fusepowered/al/adview/e;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/adview/e;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(FFI)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, p2, p1

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/fusepowered/al/impl/sdk/bd;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_to_right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    move v0, v1

    :goto_0
    int-to-float v3, p3

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/cb;->a(F)F

    move-result v1

    sub-float v1, v3, v1

    invoke-direct {p0, v2, v0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(FFF)V

    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/fusepowered/al/impl/sdk/cb;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(I)V

    return-void

    :cond_0
    sub-float v2, v1, v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->A:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method private a(ILjava/util/UUID;)V
    .locals 6

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->A:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->r:Landroid/os/Handler;

    new-instance v2, Lcom/fusepowered/al/adview/f;

    invoke-direct {v2, p0, v0, p2}, Lcom/fusepowered/al/adview/f;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;ILjava/util/UUID;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(JLcom/fusepowered/al/impl/adview/s;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->r:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/al/adview/q;

    invoke-direct {v1, p0, p3}, Lcom/fusepowered/al/adview/q;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/impl/adview/s;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/adview/ALInterstitialActivity;ILjava/util/UUID;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->d()Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->i:Z

    return-void
.end method

.method private a(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->l:Z

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->c()Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n:Z

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->p:Z

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fusepowered/al/adview/ALInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->m:Z

    return p1
.end method

.method private b(I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/fusepowered/al/impl/sdk/cb;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.fusepowered.al.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.fusepowered.al.interstitial.last_video_position"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    return-void
.end method

.method private b(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    invoke-virtual {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/fusepowered/al/adview/ALInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n:Z

    return p1
.end method

.method private c()V
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/fusepowered/al/impl/sdk/l;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->z:I

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/fusepowered/al/impl/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/fusepowered/al/impl/sdk/t;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/fusepowered/al/adview/b;

    invoke-direct {v2, p0}, Lcom/fusepowered/al/adview/b;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/fusepowered/al/adview/i;

    invoke-direct {v2, p0}, Lcom/fusepowered/al/adview/i;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/fusepowered/al/adview/j;

    invoke-direct {v2, p0}, Lcom/fusepowered/al/adview/j;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->k()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->l()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->m()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e()V

    return-void
.end method

.method private c(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->j:Z

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->d()Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/fusepowered/al/adview/ALInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->r:Landroid/os/Handler;

    return-void
.end method

.method private d(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->k:Z

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->c()Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackBegan(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bd;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->h()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s()V

    return-void
.end method

.method static synthetic f(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->start()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/cb;->a(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(F)V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->p()V

    return-void
.end method

.method private g()V
    .locals 10

    const/16 v9, 0x35

    const/4 v8, 0x5

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCloseStyle()Lcom/fusepowered/al/impl/adview/t;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fusepowered/al/impl/adview/s;->a(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/content/Context;Lcom/fusepowered/al/impl/adview/t;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0, v7}, Lcom/fusepowered/al/impl/adview/s;->setVisibility(I)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    new-instance v1, Lcom/fusepowered/al/adview/l;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/adview/l;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bd;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v2, v0}, Lcom/fusepowered/al/impl/adview/s;->a(I)V

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/fusepowered/al/impl/sdk/bd;->o()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v3}, Lcom/fusepowered/al/impl/sdk/bd;->q()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v3

    invoke-virtual {v1, v6, v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v4, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->r()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/bd;

    iget-object v4, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, v4}, Lcom/fusepowered/al/impl/sdk/bd;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->r()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v1

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    iget-object v4, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int v5, v0, v1

    add-int/2addr v1, v0

    invoke-direct {v4, v5, v1, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-direct {p0, v8}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v1

    sub-int v1, v2, v1

    invoke-direct {p0, v8}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v6, v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    new-instance v5, Lcom/fusepowered/al/adview/m;

    invoke-direct {v5, p0}, Lcom/fusepowered/al/adview/m;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    iget-object v4, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v4}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCloseStyle()Lcom/fusepowered/al/impl/adview/t;

    move-result-object v4

    invoke-static {v1, p0, v4}, Lcom/fusepowered/al/impl/adview/s;->a(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/content/Context;Lcom/fusepowered/al/impl/adview/t;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v1, v7}, Lcom/fusepowered/al/impl/adview/s;->setVisibility(I)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    new-instance v4, Lcom/fusepowered/al/adview/n;

    invoke-direct {v4, p0}, Lcom/fusepowered/al/adview/n;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v1, v4}, Lcom/fusepowered/al/impl/adview/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    invoke-direct {v1, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v2, v0}, Lcom/fusepowered/al/impl/adview/s;->a(I)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->bringToFront()V

    return-void
.end method

.method static synthetic g(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->q()V

    return-void
.end method

.method private h()V
    .locals 1

    new-instance v0, Lcom/fusepowered/al/adview/o;

    invoke-direct {v0, p0}, Lcom/fusepowered/al/adview/o;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n:Z

    return v0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bd;->r()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 1

    new-instance v0, Lcom/fusepowered/al/adview/p;

    invoke-direct {v0, p0}, Lcom/fusepowered/al/adview/p;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/sdk/bd;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    return-object v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getVideoCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    :goto_0
    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getVideoCloseDelay()F

    move-result v1

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/cb;->c(F)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(JLcom/fusepowered/al/impl/adview/s;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    goto :goto_0
.end method

.method private l()V
    .locals 4

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->z:I

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/fusepowered/al/impl/sdk/bd;->g()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v2

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->o:Z

    return v0
.end method

.method static synthetic m(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    return-object v0
.end method

.method private m()V
    .locals 5

    const/4 v3, -0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x53

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->A:Ljava/util/UUID;

    return-void
.end method

.method static synthetic n(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->h()V

    return-void
.end method

.method private o()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->j()V

    return-void
.end method

.method static synthetic p(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    return-object v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(I)V

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->stopPlayback()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s()V

    return-void
.end method

.method static synthetic q(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->i:Z

    return v0
.end method

.method static synthetic r(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/ad;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    return-object v0
.end method

.method private r()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    new-instance v1, Lcom/fusepowered/al/adview/g;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/adview/g;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/adview/AppLovinAdView;->setAdDisplayListener(Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    new-instance v1, Lcom/fusepowered/al/adview/h;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/adview/h;-><init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/adview/AppLovinAdView;->setAdClickListener(Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->b()Lcom/fusepowered/al/sdk/AppLovinAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c()V

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->bringToFront()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/adview/AppLovinAdView;->renderAd(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0, v3}, Lcom/fusepowered/al/impl/adview/ad;->a(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->h:Z

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/fusepowered/al/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Video file was missing or null - please make sure your app has the WRITE_EXTERNAL_STORAGE permission!"

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s()V

    goto :goto_0

    :cond_4
    const-string v0, "AdView was null"

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private s()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->bringToFront()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getPoststitialCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getPoststitialCloseDelay()F

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/cb;->c(F)J

    move-result-wide v0

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(JLcom/fusepowered/al/impl/adview/s;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->p:Z

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/s;->setVisibility(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 6

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-boolean v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->l:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->m:Z

    if-eqz v2, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    const-wide v4, 0x4057c00000000000L    # 95.0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v3}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v3

    int-to-double v4, v3

    int-to-double v2, v2

    div-double v2, v4, v2

    mul-double/2addr v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "AppLovinInterstitialActivity"

    const-string v1, "No video view detected on video end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private u()Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.fusepowered.al.interstitial.sharedpreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->g:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/ad;->a(Z)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->g()V

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->finish()V

    return-void
.end method

.method public exitWithError(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/fusepowered/al/impl/adview/ad;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; CleanedUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/fusepowered/al/impl/adview/ad;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to properly render an Interstitial Activity, due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/fusepowered/al/impl/sdk/cb;->a()Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Failed to show a video ad due to error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding to Android for handling..."

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding as a click to skip button."

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding as a click to close button."

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->performClick()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed, but was not eligible for dismissal."

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x1030011

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.fusepowered.al.interstitial.wrapper_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/ad;->a(Ljava/lang/String;)Lcom/fusepowered/al/impl/adview/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->lastKnownWrapper:Lcom/fusepowered/al/impl/adview/ad;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->lastKnownWrapper:Lcom/fusepowered/al/impl/adview/ad;

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->b()Lcom/fusepowered/al/sdk/AppLovinAd;

    move-result-object v3

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->a()Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->a()Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getLogger()Lcom/fusepowered/al/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    new-instance v0, Lcom/fusepowered/al/impl/sdk/bd;

    iget-object v4, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v4}, Lcom/fusepowered/al/impl/adview/ad;->a()Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/fusepowered/al/impl/sdk/bd;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    if-eqz v3, :cond_a

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Landroid/view/Display;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v3, v6, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    if-ne v3, v6, :cond_2

    if-eq v4, v6, :cond_4

    :cond_2
    if-ne v3, v1, :cond_3

    if-eq v4, v1, :cond_4

    :cond_3
    if-ne v3, v1, :cond_6

    if-ne v4, v7, :cond_6

    :cond_4
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v3}, Lcom/fusepowered/al/impl/adview/ad;->f()Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

    move-result-object v3

    sget-object v5, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;->ACTIVITY_PORTRAIT:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

    if-ne v3, v5, :cond_8

    if-eqz v0, :cond_7

    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c:Z

    invoke-virtual {p0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->setRequestedOrientation(I)V

    :cond_5
    :goto_2
    new-instance v0, Lcom/fusepowered/al/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/fusepowered/al/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    invoke-direct {v0, v1, v3, p0}, Lcom/fusepowered/al/adview/AppLovinAdView;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;Lcom/fusepowered/al/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/adview/AppLovinAdView;->setAutoDestroy(Z)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0, p0}, Lcom/fusepowered/al/impl/adview/ad;->a(Lcom/fusepowered/al/impl/adview/u;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bd;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->q:Z

    :goto_3
    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.fusepowered.al.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->r()V

    return-void

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c:Z

    invoke-virtual {p0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c:Z

    invoke-virtual {p0, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_9
    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c:Z

    invoke-virtual {p0, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_a
    const-string v0, "No current ad found."

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrapper is null; initialized state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/fusepowered/al/impl/adview/ad;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v0, "Wrapper ID is null"

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/fusepowered/al/adview/AppLovinAdView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->pause()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v2, "AppLovinInterstitialActivity"

    const-string v3, "Unable to destroy video view"

    invoke-interface {v1, v2, v3, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.fusepowered.al.interstitial.last_video_position"

    iget-object v2, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.fusepowered.al.interstitial.should_resume_video"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/ad;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b:Lcom/fusepowered/al/impl/adview/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/ad;->a(Z)V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.fusepowered.al.interstitial.should_resume_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v1

    const-string v2, "com.fusepowered.al.interstitial.last_video_position"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int v2, v1, v0

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->l()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->m()V

    invoke-direct {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n()V

    iget-object v3, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v3, v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->seekTo(I)V

    iget-object v3, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->t:Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    invoke-virtual {v3}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->start()V

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(FFI)V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e:Lcom/fusepowered/al/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bd;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Fading in close button due to app resume."

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->w:Lcom/fusepowered/al/impl/adview/s;

    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(JLcom/fusepowered/al/impl/adview/s;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/al/adview/ALInterstitialActivity;->u:Lcom/fusepowered/al/impl/adview/s;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->dismiss()V

    goto :goto_1
.end method
