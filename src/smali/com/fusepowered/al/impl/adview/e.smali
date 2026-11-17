.class Lcom/fusepowered/al/impl/adview/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/e;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/e;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->i(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/e;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->i(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackBegan(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/e;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->i(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/e;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->i(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/fusepowered/al/sdk/AppLovinAd;DZ)V

    :cond_0
    return-void
.end method
