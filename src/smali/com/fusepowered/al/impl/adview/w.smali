.class Lcom/fusepowered/al/impl/adview/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/ad;

.field final synthetic b:Lcom/fusepowered/al/impl/adview/v;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    iput-object p2, p0, Lcom/fusepowered/al/impl/adview/w;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/v;->d(Lcom/fusepowered/al/impl/adview/v;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/v;->e(Lcom/fusepowered/al/impl/adview/v;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->d()Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/al/impl/adview/v;->b(Lcom/fusepowered/al/impl/adview/v;Z)Z

    :cond_1
    return-void
.end method

.method public adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/v;->b(Lcom/fusepowered/al/impl/adview/v;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    invoke-static {v1}, Lcom/fusepowered/al/impl/adview/v;->a(Lcom/fusepowered/al/impl/adview/v;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/ad;->d()Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    invoke-static {v1}, Lcom/fusepowered/al/impl/adview/v;->c(Lcom/fusepowered/al/impl/adview/v;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fusepowered/al/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->b:Lcom/fusepowered/al/impl/adview/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/al/impl/adview/v;->a(Lcom/fusepowered/al/impl/adview/v;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/w;->a:Lcom/fusepowered/al/impl/adview/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/ad;->a(Z)V

    return-void
.end method
