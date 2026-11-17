.class Lcom/fusepowered/al/adview/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/s;

.field final synthetic b:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;Lcom/fusepowered/al/impl/adview/s;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/q;->b:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    iput-object p2, p0, Lcom/fusepowered/al/adview/q;->a:Lcom/fusepowered/al/impl/adview/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/adview/q;->a:Lcom/fusepowered/al/impl/adview/s;

    iget-object v1, p0, Lcom/fusepowered/al/adview/q;->b:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/q;->b:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->n(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/al/adview/q;->a:Lcom/fusepowered/al/impl/adview/s;

    iget-object v1, p0, Lcom/fusepowered/al/adview/q;->b:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->m(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/q;->b:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->o(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    goto :goto_0
.end method
