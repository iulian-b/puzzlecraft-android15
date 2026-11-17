.class Lcom/fusepowered/al/impl/sdk/ao;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/an;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/an;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/ao;->a:Lcom/fusepowered/al/impl/sdk/an;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/ao;->a:Lcom/fusepowered/al/impl/sdk/an;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/an;->a:Lcom/fusepowered/al/impl/sdk/am;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->a(Lcom/fusepowered/al/impl/sdk/al;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/al/impl/sdk/ap;

    invoke-direct {v1, p0}, Lcom/fusepowered/al/impl/sdk/ap;-><init>(Lcom/fusepowered/al/impl/sdk/ao;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
