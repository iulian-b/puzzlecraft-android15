.class Lcom/fusepowered/al/adview/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/i;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/adview/i;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/adview/ALInterstitialActivity;Z)Z

    iget-object v0, p0, Lcom/fusepowered/al/adview/i;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->e(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V

    return-void
.end method
