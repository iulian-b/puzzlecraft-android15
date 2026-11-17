.class Lcom/fusepowered/al/impl/sdk/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/ao;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/ap;->a:Lcom/fusepowered/al/impl/sdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/ap;->a:Lcom/fusepowered/al/impl/sdk/ao;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/ao;->a:Lcom/fusepowered/al/impl/sdk/an;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/an;->a:Lcom/fusepowered/al/impl/sdk/am;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->c(Lcom/fusepowered/al/impl/sdk/al;)V

    return-void
.end method
