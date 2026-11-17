.class Lcom/fusepowered/al/impl/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/fusepowered/al/impl/sdk/w;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/y;->b:Lcom/fusepowered/al/impl/sdk/w;

    iput p2, p0, Lcom/fusepowered/al/impl/sdk/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/y;->b:Lcom/fusepowered/al/impl/sdk/w;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/w;->a(Lcom/fusepowered/al/impl/sdk/w;)Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/al/impl/sdk/y;->a:I

    invoke-interface {v0, v1}, Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method
