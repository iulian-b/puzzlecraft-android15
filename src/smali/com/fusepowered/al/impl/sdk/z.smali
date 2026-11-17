.class Lcom/fusepowered/al/impl/sdk/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdClickListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;
.implements Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/u;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

.field private final d:Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

.field private final e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

.field private final f:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;


# direct methods
.method private constructor <init>(Lcom/fusepowered/al/impl/sdk/u;Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/fusepowered/al/impl/sdk/z;->c:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    iput-object p6, p0, Lcom/fusepowered/al/impl/sdk/z;->d:Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

    iput-object p4, p0, Lcom/fusepowered/al/impl/sdk/z;->e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p3, p0, Lcom/fusepowered/al/impl/sdk/z;->f:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/z;->b:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/al/impl/sdk/u;Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;Lcom/fusepowered/al/impl/sdk/v;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/fusepowered/al/impl/sdk/z;-><init>(Lcom/fusepowered/al/impl/sdk/u;Landroid/app/Activity;Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/sdk/z;)Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->f:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    return-object v0
.end method

.method static synthetic b(Lcom/fusepowered/al/impl/sdk/z;)Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->c:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method static synthetic c(Lcom/fusepowered/al/impl/sdk/z;)Lcom/fusepowered/al/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->d:Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/fusepowered/al/impl/sdk/z;)Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method


# virtual methods
.method public adClicked(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->d:Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ac;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/sdk/ac;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->c:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->c:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/u;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/impl/sdk/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/z;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/fusepowered/al/impl/sdk/u;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->c:Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ab;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/sdk/ab;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/fusepowered/al/impl/sdk/bt;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/u;->d(Lcom/fusepowered/al/impl/sdk/u;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fusepowered/al/impl/sdk/bt;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/u;->d(Lcom/fusepowered/al/impl/sdk/u;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a()Lcom/fusepowered/al/impl/sdk/bl;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/al/impl/sdk/bm;->b:Lcom/fusepowered/al/impl/sdk/bm;

    invoke-virtual {v1, v0, v2}, Lcom/fusepowered/al/impl/sdk/bl;->a(Lcom/fusepowered/al/impl/sdk/ay;Lcom/fusepowered/al/impl/sdk/bm;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/impl/sdk/u;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->b(Lcom/fusepowered/al/impl/sdk/u;)Lcom/fusepowered/al/impl/sdk/by;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/by;->a(Z)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/impl/sdk/u;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "network_timeout"

    const/16 v0, -0x1f4

    :goto_1
    invoke-static {}, Lcom/fusepowered/al/impl/sdk/at;->a()Lcom/fusepowered/al/impl/sdk/at;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/fusepowered/al/impl/sdk/at;->a(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/impl/sdk/u;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/z;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/al/impl/sdk/u;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_2
    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/fusepowered/al/impl/sdk/aa;

    invoke-direct {v2, p0, p1, v0}, Lcom/fusepowered/al/impl/sdk/aa;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-string v1, "user_closed_video"

    const/16 v0, -0x258

    goto :goto_1
.end method

.method public userDeclinedToViewAd(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public userOverQuota(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    const-string v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->f:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ag;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/al/impl/sdk/ag;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public userRewardRejected(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    const-string v1, "rejected"

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->f:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ah;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/al/impl/sdk/ah;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public userRewardVerified(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->f:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/af;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/al/impl/sdk/af;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public validationRequestFailed(Lcom/fusepowered/al/sdk/AppLovinAd;I)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    const-string v1, "network_timeout"

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->f:Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ai;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/al/impl/sdk/ai;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoPlaybackBegan(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ad;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/sdk/ad;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V
    .locals 8

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->e:Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ae;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/fusepowered/al/impl/sdk/ae;-><init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/z;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0, p4}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/impl/sdk/u;Z)Z

    return-void
.end method
