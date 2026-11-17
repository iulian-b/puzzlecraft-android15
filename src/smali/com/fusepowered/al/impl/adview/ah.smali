.class Lcom/fusepowered/al/impl/adview/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/fusepowered/al/impl/adview/ad;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/ad;I)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/ah;->b:Lcom/fusepowered/al/impl/adview/ad;

    iput p2, p0, Lcom/fusepowered/al/impl/adview/ah;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/ah;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/ad;->c(Lcom/fusepowered/al/impl/adview/ad;)Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/ah;->b:Lcom/fusepowered/al/impl/adview/ad;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/ad;->c(Lcom/fusepowered/al/impl/adview/ad;)Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/al/impl/adview/ah;->a:I

    invoke-interface {v0, v1}, Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method
