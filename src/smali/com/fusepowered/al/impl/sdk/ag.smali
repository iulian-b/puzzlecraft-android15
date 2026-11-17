.class Lcom/fusepowered/al/impl/sdk/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/sdk/AppLovinAd;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/fusepowered/al/impl/sdk/z;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/ag;->c:Lcom/fusepowered/al/impl/sdk/z;

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/ag;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    iput-object p3, p0, Lcom/fusepowered/al/impl/sdk/ag;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/ag;->c:Lcom/fusepowered/al/impl/sdk/z;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/z;->a(Lcom/fusepowered/al/impl/sdk/z;)Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/ag;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/ag;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;->userOverQuota(Lcom/fusepowered/al/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method
