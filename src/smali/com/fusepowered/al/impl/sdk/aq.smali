.class Lcom/fusepowered/al/impl/sdk/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/am;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/aq;->a:Lcom/fusepowered/al/impl/sdk/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/aq;->a:Lcom/fusepowered/al/impl/sdk/am;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->f(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/impl/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/aq;->a:Lcom/fusepowered/al/impl/sdk/am;

    iget-object v1, v1, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v1}, Lcom/fusepowered/al/impl/sdk/al;->e(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/u;->a(Lcom/fusepowered/al/sdk/AppLovinAdRewardListener;)V

    return-void
.end method
