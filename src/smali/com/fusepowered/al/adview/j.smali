.class Lcom/fusepowered/al/adview/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/j;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/adview/j;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->d(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/adview/k;

    invoke-direct {v1, p0, p2, p3}, Lcom/fusepowered/al/adview/k;-><init>(Lcom/fusepowered/al/adview/j;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
