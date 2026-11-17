.class Lcom/fusepowered/al/impl/adview/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/d;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/d;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->g(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/d;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->g(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
