.class Lcom/fusepowered/al/adview/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/g;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2

    iget-object v1, p0, Lcom/fusepowered/al/adview/g;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    move-object v0, p1

    check-cast v0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-static {v1, v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    iget-object v0, p0, Lcom/fusepowered/al/adview/g;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->q(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/g;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0, p1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/g;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0, p1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    return-void
.end method
