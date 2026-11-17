.class Lcom/fusepowered/al/impl/sdk/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/sdk/AppLovinAd;

.field final synthetic b:Lcom/fusepowered/al/impl/sdk/w;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/w;Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/x;->b:Lcom/fusepowered/al/impl/sdk/w;

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/x;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/x;->b:Lcom/fusepowered/al/impl/sdk/w;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/w;->a(Lcom/fusepowered/al/impl/sdk/w;)Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/x;->a:Lcom/fusepowered/al/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;->adReceived(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    return-void
.end method
