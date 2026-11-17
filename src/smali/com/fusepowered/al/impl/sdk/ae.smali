.class Lcom/fusepowered/al/impl/sdk/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/sdk/AppLovinAd;

.field final synthetic b:D

.field final synthetic c:Z

.field final synthetic d:Lcom/fusepowered/al/impl/sdk/z;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/z;Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V
    .locals 1

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/ae;->d:Lcom/fusepowered/al/impl/sdk/z;

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/ae;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    iput-wide p3, p0, Lcom/fusepowered/al/impl/sdk/ae;->b:D

    iput-boolean p5, p0, Lcom/fusepowered/al/impl/sdk/ae;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/ae;->d:Lcom/fusepowered/al/impl/sdk/z;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/z;->d(Lcom/fusepowered/al/impl/sdk/z;)Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/ae;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    iget-wide v2, p0, Lcom/fusepowered/al/impl/sdk/ae;->b:D

    iget-boolean v4, p0, Lcom/fusepowered/al/impl/sdk/ae;->c:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V

    return-void
.end method
