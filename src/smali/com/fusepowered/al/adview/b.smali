.class Lcom/fusepowered/al/adview/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/b;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/al/adview/b;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->setVideoSize(II)V

    iget-object v0, p0, Lcom/fusepowered/al/adview/b;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/AppLovinVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/AppLovinVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    new-instance v0, Lcom/fusepowered/al/adview/c;

    invoke-direct {v0, p0}, Lcom/fusepowered/al/adview/c;-><init>(Lcom/fusepowered/al/adview/b;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method
