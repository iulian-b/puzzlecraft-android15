.class Lcom/fusepowered/al/impl/sdk/al;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/fusepowered/al/impl/sdk/u;

.field private c:Landroid/app/Activity;

.field private d:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

.field private e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

.field private f:Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

.field private g:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

.field private final h:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;Lcom/fusepowered/al/impl/sdk/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    const-string v1, "IncentivizedAdLauncher"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->h:Ljava/util/Timer;

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/al;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/al;->b:Lcom/fusepowered/al/impl/sdk/u;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/sdk/al;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->b:Lcom/fusepowered/al/impl/sdk/u;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/al;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/al;->g:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/al;->e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v4, p0, Lcom/fusepowered/al/impl/sdk/al;->d:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    iget-object v5, p0, Lcom/fusepowered/al/impl/sdk/al;->f:Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/al/impl/sdk/u;->b(Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/fusepowered/al/impl/sdk/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/al/impl/sdk/al;->b()V

    return-void
.end method

.method static synthetic d(Lcom/fusepowered/al/impl/sdk/al;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->g:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    return-object v0
.end method

.method static synthetic f(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/impl/sdk/u;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->b:Lcom/fusepowered/al/impl/sdk/u;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/al;->c:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/al/impl/sdk/am;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/am;-><init>(Lcom/fusepowered/al/impl/sdk/al;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/al;->c:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/al;->f:Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public a(Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/al;->d:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public a(Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/al;->g:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method public a(Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/al;->e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method
