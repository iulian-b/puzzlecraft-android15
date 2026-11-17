.class final Lcom/fusepowered/u1/video/g;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/fusepowered/u1/video/g;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/fusepowered/u1/video/g;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->f(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Z

    .line 267
    iget-object v0, p0, Lcom/fusepowered/u1/video/g;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->e(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/u1/video/IUnityAdsVideoPlayerListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 268
    return-void
.end method
