.class Lcom/fusepowered/al/impl/adview/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;


# direct methods
.method private constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;Lcom/fusepowered/al/impl/adview/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/al/impl/adview/i;-><init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->d(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;

    invoke-direct {v0}, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->e(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->f(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;->createInterstitialAdDialog(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/adview/d;

    iget-object v2, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {v1, v2}, Lcom/fusepowered/al/impl/adview/d;-><init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V

    invoke-interface {v0, v1}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;)V

    new-instance v1, Lcom/fusepowered/al/impl/adview/e;

    iget-object v2, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {v1, v2}, Lcom/fusepowered/al/impl/adview/e;-><init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V

    invoke-interface {v0, v1}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/fusepowered/al/sdk/AppLovinAdVideoPlaybackListener;)V

    new-instance v1, Lcom/fusepowered/al/impl/adview/c;

    iget-object v2, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {v1, v2}, Lcom/fusepowered/al/impl/adview/c;-><init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V

    invoke-interface {v0, v1}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/fusepowered/al/sdk/AppLovinAdClickListener;)V

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/i;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->d(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
