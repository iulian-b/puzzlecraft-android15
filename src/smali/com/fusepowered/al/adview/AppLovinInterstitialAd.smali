.class public Lcom/fusepowered/al/adview/AppLovinInterstitialAd;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;->a:Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    invoke-static {p1}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/al/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;

    invoke-direct {v1}, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;-><init>()V

    invoke-interface {v1, v0, p1}, Lcom/fusepowered/al/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;->a:Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;->setVisibility(I)V

    return-void
.end method

.method public static create(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;

    invoke-direct {v0}, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;-><init>()V

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/al/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/fusepowered/al/sdk/AppLovinSdk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fusepowered/al/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;->show(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static show(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/fusepowered/al/adview/r;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/al/adview/r;-><init>(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;->a:Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/AppLovinInterstitialAd;->a:Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->show()V

    :cond_0
    return-void
.end method
