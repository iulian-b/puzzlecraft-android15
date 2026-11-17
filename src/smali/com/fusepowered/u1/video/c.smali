.class final Lcom/fusepowered/u1/video/c;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;IZZ)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    iput p2, p0, Lcom/fusepowered/u1/video/c;->a:I

    iput-boolean p3, p0, Lcom/fusepowered/u1/video/c;->b:Z

    iput-boolean p4, p0, Lcom/fusepowered/u1/video/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->q(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->q(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/u1/video/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 520
    :cond_0
    iget v0, p0, Lcom/fusepowered/u1/video/c;->a:I

    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->r(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->s(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->t(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    .line 536
    :goto_0
    return-void

    .line 526
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/u1/video/c;->b:Z

    if-eqz v0, :cond_4

    .line 527
    iget-boolean v0, p0, Lcom/fusepowered/u1/video/c;->c:Z

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->t(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->u(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/u1/video/c;->d:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->v(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    goto :goto_0
.end method
