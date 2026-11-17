.class Lcom/fusepowered/al/impl/sdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/u;

.field private final b:Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/u;Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/w;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/w;->b:Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/sdk/w;)Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/w;->b:Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    return-object v0
.end method


# virtual methods
.method public adReceived(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/w;->a:Lcom/fusepowered/al/impl/sdk/u;

    move-object v0, p1

    check-cast v0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-static {v1, v0}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/impl/sdk/u;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/w;->b:Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/w;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/x;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/sdk/x;-><init>(Lcom/fusepowered/al/impl/sdk/w;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/w;->b:Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/w;->a:Lcom/fusepowered/al/impl/sdk/u;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/u;->c(Lcom/fusepowered/al/impl/sdk/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/y;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/al/impl/sdk/y;-><init>(Lcom/fusepowered/al/impl/sdk/w;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
