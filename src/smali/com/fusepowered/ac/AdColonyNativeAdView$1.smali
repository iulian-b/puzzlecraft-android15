.class Lcom/fusepowered/ac/AdColonyNativeAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/AdColonyNativeAdView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/AdColonyNativeAdView;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 286
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 288
    if-nez v0, :cond_1

    .line 290
    new-array v0, v1, [F

    .line 291
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->al:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 292
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 293
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 318
    :cond_0
    :goto_0
    return v4

    .line 295
    :cond_1
    if-ne v0, v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->al:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 300
    :cond_2
    if-ne v0, v4, :cond_0

    .line 302
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->U:Ljava/lang/String;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->U:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    :cond_3
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "native_overlay_click"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 307
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->T:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->al:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 312
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Unable to open store."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
