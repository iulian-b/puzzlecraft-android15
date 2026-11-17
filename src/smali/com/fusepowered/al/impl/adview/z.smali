.class Lcom/fusepowered/al/impl/adview/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/sdk/AppLovinAd;

.field final synthetic b:Lcom/fusepowered/al/impl/adview/v;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/z;->b:Lcom/fusepowered/al/impl/adview/v;

    iput-object p2, p0, Lcom/fusepowered/al/impl/adview/z;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/z;->b:Lcom/fusepowered/al/impl/adview/v;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/v;->f(Lcom/fusepowered/al/impl/adview/v;)Lcom/fusepowered/al/adview/AppLovinAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/z;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/adview/AppLovinAdView;->renderAd(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/z;->b:Lcom/fusepowered/al/impl/adview/v;

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/z;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    check-cast v0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getCloseStyle()Lcom/fusepowered/al/impl/adview/t;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/al/impl/adview/v;->a(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/t;)V

    return-void
.end method
