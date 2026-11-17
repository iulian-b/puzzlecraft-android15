.class Lcom/fusepowered/ac/AdColonyNativeAdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 344
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->G:Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->G:Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-interface {v0, v1, v3}, Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;->onAdColonyNativeAdMuted(Lcom/fusepowered/ac/AdColonyNativeAdView;Z)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setMuted(Z)V

    .line 352
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->u:Z

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->G:Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->G:Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;->onAdColonyNativeAdMuted(Lcom/fusepowered/ac/AdColonyNativeAdView;Z)V

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v2, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->u:Z

    .line 359
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$2;->a:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setMuted(Z)V

    goto :goto_0
.end method
