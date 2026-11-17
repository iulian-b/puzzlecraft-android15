.class final Lcom/fusepowered/al/adview/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/sdk/AppLovinSdk;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/r;->a:Lcom/fusepowered/al/sdk/AppLovinSdk;

    iput-object p2, p0, Lcom/fusepowered/al/adview/r;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;

    invoke-direct {v0}, Lcom/fusepowered/al/impl/adview/InterstitialAdDialogCreatorImpl;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/al/adview/r;->a:Lcom/fusepowered/al/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/fusepowered/al/adview/r;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/fusepowered/al/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/al/adview/AppLovinInterstitialAdDialog;->show()V

    return-void
.end method
