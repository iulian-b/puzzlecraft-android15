.class Lcom/fusepowered/al/impl/adview/v;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/fusepowered/al/impl/adview/u;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/fusepowered/al/sdk/AppLovinSdk;

.field private final c:Lcom/fusepowered/al/sdk/AppLovinLogger;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/fusepowered/al/adview/AppLovinAdView;

.field private f:Ljava/lang/Runnable;

.field private g:Lcom/fusepowered/al/impl/adview/ad;

.field private volatile h:Z

.field private volatile i:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/fusepowered/al/impl/adview/v;->g:Lcom/fusepowered/al/impl/adview/ad;

    iput-boolean v2, p0, Lcom/fusepowered/al/impl/adview/v;->h:Z

    iput-boolean v2, p0, Lcom/fusepowered/al/impl/adview/v;->i:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/v;->b:Lcom/fusepowered/al/sdk/AppLovinSdk;

    invoke-virtual {p1}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getLogger()Lcom/fusepowered/al/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->c:Lcom/fusepowered/al/sdk/AppLovinLogger;

    iput-object p2, p0, Lcom/fusepowered/al/impl/adview/v;->a:Landroid/app/Activity;

    new-instance v0, Lcom/fusepowered/al/impl/adview/ac;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/al/impl/adview/ac;-><init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/w;)V

    iput-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->f:Ljava/lang/Runnable;

    new-instance v0, Lcom/fusepowered/al/adview/AppLovinAdView;

    sget-object v1, Lcom/fusepowered/al/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    invoke-direct {v0, p1, v1, p2}, Lcom/fusepowered/al/adview/AppLovinAdView;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;Lcom/fusepowered/al/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/adview/AppLovinAdView;->setAutoDestroy(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/impl/adview/v;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/al/impl/adview/v;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/v;->c:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v2, "InterstitialAdDialog"

    const-string v3, "Set window flags failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/fusepowered/al/impl/sdk/cb;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/adview/v;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/al/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/v;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->d:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/impl/adview/v;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/fusepowered/al/impl/adview/t;)V
    .locals 12

    const/16 v11, 0xb

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->b:Lcom/fusepowered/al/sdk/AppLovinSdk;

    invoke-virtual {p0}, Lcom/fusepowered/al/impl/adview/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/fusepowered/al/impl/adview/s;->a(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/content/Context;Lcom/fusepowered/al/impl/adview/t;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/adview/aa;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/adview/aa;-><init>(Lcom/fusepowered/al/impl/adview/v;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/fusepowered/al/impl/sdk/bd;

    iget-object v2, p0, Lcom/fusepowered/al/impl/adview/v;->b:Lcom/fusepowered/al/sdk/AppLovinSdk;

    invoke-direct {v1, v2}, Lcom/fusepowered/al/impl/sdk/bd;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->l()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fusepowered/al/impl/adview/v;->a(I)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/impl/adview/s;->a(I)V

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->n()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/fusepowered/al/impl/adview/v;->a(I)I

    move-result v4

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->p()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fusepowered/al/impl/adview/v;->a(I)I

    move-result v1

    invoke-virtual {v3, v8, v4, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v5, v0, v3}, Lcom/fusepowered/al/adview/AppLovinAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->bringToFront()V

    new-instance v3, Lcom/fusepowered/al/impl/sdk/bd;

    iget-object v5, p0, Lcom/fusepowered/al/impl/adview/v;->b:Lcom/fusepowered/al/sdk/AppLovinSdk;

    invoke-direct {v3, v5}, Lcom/fusepowered/al/impl/sdk/bd;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;)V

    invoke-virtual {v3}, Lcom/fusepowered/al/impl/sdk/bd;->r()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fusepowered/al/impl/adview/v;->a(I)I

    move-result v3

    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/fusepowered/al/impl/adview/v;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v7, v2, v3

    add-int/2addr v2, v3

    invoke-direct {v6, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0, v9}, Lcom/fusepowered/al/impl/adview/v;->a(I)I

    move-result v2

    sub-int v2, v4, v2

    invoke-direct {p0, v9}, Lcom/fusepowered/al/impl/adview/v;->a(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v6, v8, v2, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Lcom/fusepowered/al/impl/adview/ab;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/al/impl/adview/ab;-><init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/s;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v0, v5, v6}, Lcom/fusepowered/al/adview/AppLovinAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/al/impl/adview/v;->a(Lcom/fusepowered/al/impl/adview/t;)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/adview/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/al/impl/adview/v;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/fusepowered/al/impl/adview/v;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/fusepowered/al/impl/adview/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/al/impl/adview/v;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/fusepowered/al/impl/adview/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/impl/adview/v;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/fusepowered/al/impl/adview/v;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/fusepowered/al/impl/adview/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/al/impl/adview/v;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/fusepowered/al/impl/adview/v;)Lcom/fusepowered/al/adview/AppLovinAdView;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    return-object v0
.end method

.method static synthetic g(Lcom/fusepowered/al/impl/adview/v;)Lcom/fusepowered/al/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->c:Lcom/fusepowered/al/sdk/AppLovinLogger;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/fusepowered/al/impl/adview/ad;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    new-instance v1, Lcom/fusepowered/al/impl/adview/w;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/adview/w;-><init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/ad;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/adview/AppLovinAdView;->setAdDisplayListener(Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    new-instance v1, Lcom/fusepowered/al/impl/adview/x;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/adview/x;-><init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/ad;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/adview/AppLovinAdView;->setAdClickListener(Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    new-instance v1, Lcom/fusepowered/al/impl/adview/y;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/adview/y;-><init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/ad;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/adview/AppLovinAdView;->setAdVideoPlaybackListener(Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/v;->g:Lcom/fusepowered/al/impl/adview/ad;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fusepowered/al/impl/adview/ad;->a(Z)V

    return-void
.end method

.method public a(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->a:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/al/impl/adview/z;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/adview/z;-><init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->g:Lcom/fusepowered/al/impl/adview/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->g:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->g()V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/fusepowered/al/adview/AppLovinAdView;->destroy()V

    :cond_1
    iput-object v1, p0, Lcom/fusepowered/al/impl/adview/v;->g:Lcom/fusepowered/al/impl/adview/ad;

    iput-object v1, p0, Lcom/fusepowered/al/impl/adview/v;->e:Lcom/fusepowered/al/adview/AppLovinAdView;

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/fusepowered/al/impl/adview/v;->a()V

    return-void
.end method
