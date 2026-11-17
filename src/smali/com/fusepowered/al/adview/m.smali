.class Lcom/fusepowered/al/adview/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/m;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/adview/m;->a:Lcom/fusepowered/al/adview/ALInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/al/adview/ALInterstitialActivity;->f(Lcom/fusepowered/al/adview/ALInterstitialActivity;)Lcom/fusepowered/al/impl/adview/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->performClick()Z

    return-void
.end method
