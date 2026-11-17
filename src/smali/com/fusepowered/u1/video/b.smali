.class final Lcom/fusepowered/u1/video/b;
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
    .line 451
    iput-object p1, p0, Lcom/fusepowered/u1/video/b;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/fusepowered/u1/video/b;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->e(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;->onVideoSkip()V

    .line 455
    return-void
.end method
