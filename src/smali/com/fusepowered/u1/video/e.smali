.class final Lcom/fusepowered/u1/video/e;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/fusepowered/u1/video/e;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fusepowered/u1/video/e;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->b(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 218
    iget-object v0, p0, Lcom/fusepowered/u1/video/e;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 219
    return-void
.end method
