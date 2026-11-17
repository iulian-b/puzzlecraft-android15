.class Lcom/fusepowered/al/adview/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->h(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/s;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->b(Lcom/fusepowered/al/adview/ALInterstitialActivity;Z)Z

    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->i(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->j(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->j(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/s;->setVisibility(I)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->bringToFront()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->k(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/sdk/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/bd;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/al/impl/adview/s;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/fusepowered/al/adview/o;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-virtual {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->dismiss()V

    goto :goto_0
.end method
