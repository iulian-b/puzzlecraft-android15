.class Lcom/fusepowered/al/impl/adview/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;


# direct methods
.method private constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/k;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;Lcom/fusepowered/al/impl/adview/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/al/impl/adview/k;-><init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/k;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->d(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/k;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->c(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/impl/adview/o;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/k;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->d(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/al/sdk/AppLovinAd;->getSize()Lcom/fusepowered/al/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->a(Landroid/view/View;Lcom/fusepowered/al/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/k;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->c(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/impl/adview/o;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/adview/k;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->d(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/sdk/AppLovinAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/adview/o;->a(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
