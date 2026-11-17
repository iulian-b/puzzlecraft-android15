.class Lcom/fusepowered/al/adview/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/h;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/h;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->r(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->e()Lcom/fusepowered/al/sdk/AppLovinAdClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdClickListener;->adClicked(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
