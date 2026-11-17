.class public Lcom/fusepowered/sa/android/publish/splash/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/splash/a$7;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:J

.field private l:Z

.field private m:Lcom/fusepowered/sa/android/publish/StartAppAd;

.field private n:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

.field private o:Ljava/lang/Runnable;

.field private p:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

.field private q:Lcom/fusepowered/sa/android/publish/AdEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->d:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->e:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->f:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->h:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->i:Z

    iput-wide v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->j:J

    iput-wide v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->k:J

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->l:Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/a$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/splash/a$1;-><init>(Lcom/fusepowered/sa/android/publish/splash/a;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/a$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/splash/a$2;-><init>(Lcom/fusepowered/sa/android/publish/splash/a;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->p:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/a$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/splash/a$3;-><init>(Lcom/fusepowered/sa/android/publish/splash/a;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->q:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/splash/a;->n:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/splash/a;Lcom/fusepowered/sa/android/publish/StartAppAd;)Lcom/fusepowered/sa/android/publish/StartAppAd;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->m:Lcom/fusepowered/sa/android/publish/StartAppAd;

    return-object p1
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/splash/a;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/splash/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->k:J

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;->getIndex()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->k:J

    iget-wide v4, p0, Lcom/fusepowered/sa/android/publish/splash/a;->j:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    new-instance v2, Lcom/fusepowered/sa/android/publish/splash/a$4;

    invoke-direct {v2, p0, p1}, Lcom/fusepowered/sa/android/publish/splash/a$4;-><init>(Lcom/fusepowered/sa/android/publish/splash/a;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/4 v3, 0x4

    const-string v4, "Delaying Splash for min show time"

    invoke-static {v3, v4}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/splash/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/splash/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->f()V

    return-void
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/splash/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->h()V

    return-void
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/fusepowered/sa/android/publish/splash/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->g()V

    return-void
.end method

.method private d()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->AUTO:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    if-ne v3, v4, :cond_0

    if-ne v2, v5, :cond_1

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    sget-object v4, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {v3, v4}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setOrientation(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_0
    :goto_0
    sget-object v3, Lcom/fusepowered/sa/android/publish/splash/a$7;->a:[I

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v1

    :goto_1
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Orientation: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    return v0

    :cond_1
    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    sget-object v4, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {v3, v4}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setOrientation(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    goto :goto_0

    :pswitch_0
    if-ne v2, v5, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/app/Activity;)V

    goto :goto_1

    :pswitch_1
    if-ne v2, v0, :cond_2

    :goto_3
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/f/b;->b(Landroid/app/Activity;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->h:Z

    return p1
.end method

.method private e()Z
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x4

    const-string v1, "Displaying Splash screen"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->validate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic e(Lcom/fusepowered/sa/android/publish/splash/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/fusepowered/sa/android/publish/splash/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->f:Z

    return p1
.end method

.method static synthetic f(Lcom/fusepowered/sa/android/publish/splash/a;)Lcom/fusepowered/sa/android/publish/StartAppAd;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->m:Lcom/fusepowered/sa/android/publish/StartAppAd;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x4

    const-string v1, "Loading Splash Ad"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->m:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->j:J

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->m:Lcom/fusepowered/sa/android/publish/StartAppAd;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->n:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->q:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadSplash(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method static synthetic g(Lcom/fusepowered/sa/android/publish/splash/a;)Lcom/fusepowered/sa/android/publish/AdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->p:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    return-object v0
.end method

.method private g()V
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->k()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x4

    const-string v1, "Started Splash Loading Timer"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/sa/android/publish/splash/a$5;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/splash/a$5;-><init>(Lcom/fusepowered/sa/android/publish/splash/a;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic h(Lcom/fusepowered/sa/android/publish/splash/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->i()V

    return-void
.end method

.method static synthetic i(Lcom/fusepowered/sa/android/publish/splash/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private i()V
    .locals 4

    const/4 v0, 0x4

    const-string v1, "Started Splash Display Timer"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/sa/android/publish/splash/a$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/splash/a$6;-><init>(Lcom/fusepowered/sa/android/publish/splash/a;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/splash/a;->b:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "User Canceled Splash Screen"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->k()V

    return-void
.end method

.method static synthetic j(Lcom/fusepowered/sa/android/publish/splash/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->f:Z

    return v0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->i:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fusepowered.sa.android.splashHidden"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/fusepowered/sa/android/publish/splash/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->d:Z

    return v0
.end method

.method static synthetic l(Lcom/fusepowered/sa/android/publish/splash/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->g:Z

    return v0
.end method

.method static synthetic m(Lcom/fusepowered/sa/android/publish/splash/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x4

    const-string v0, "========= Splsah Screen Feature ========="

    invoke-static {v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "Splash screen orientation is being modified"

    invoke-static {v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->l:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/splash/a;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->f:Z

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/splash/a;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/splash/a;->j()V

    :cond_0
    return-void
.end method
