.class Lcom/fusepowered/al/impl/adview/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/ad;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/ae;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/ae;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-static {v0, p1}, Lcom/fusepowered/al/impl/adview/ad;->a(Lcom/fusepowered/al/impl/adview/ad;Lcom/fusepowered/al/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/ae;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-virtual {v0, p1}, Lcom/fusepowered/al/impl/adview/ad;->showAndRender(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/ae;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-static {v0, p1}, Lcom/fusepowered/al/impl/adview/ad;->a(Lcom/fusepowered/al/impl/adview/ad;I)V

    return-void
.end method
