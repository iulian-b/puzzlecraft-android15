.class final Lcom/fusepowered/u1/video/i;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/fusepowered/u1/video/i;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/fusepowered/u1/video/i;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->b(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/fusepowered/u1/video/i;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->k(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    .line 365
    iget-object v0, p0, Lcom/fusepowered/u1/video/i;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->l(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    .line 367
    :cond_0
    return-void
.end method
