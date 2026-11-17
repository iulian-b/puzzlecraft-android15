.class Lcom/fusepowered/al/adview/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/UUID;

.field final synthetic c:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;ILjava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/f;->c:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    iput p2, p0, Lcom/fusepowered/al/adview/f;->a:I

    iput-object p3, p0, Lcom/fusepowered/al/adview/f;->b:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/al/adview/f;->c:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    iget v1, p0, Lcom/fusepowered/al/adview/f;->a:I

    iget-object v2, p0, Lcom/fusepowered/al/adview/f;->b:Ljava/util/UUID;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->a(Lcom/fusepowered/al/adview/ALInterstitialActivity;ILjava/util/UUID;)V

    return-void
.end method
