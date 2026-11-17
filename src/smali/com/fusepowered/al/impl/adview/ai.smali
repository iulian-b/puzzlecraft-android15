.class Lcom/fusepowered/al/impl/adview/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/ad;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/ai;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/ai;->a:Lcom/fusepowered/al/impl/adview/ad;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/ad;->d(Lcom/fusepowered/al/impl/adview/ad;)Lcom/fusepowered/al/impl/adview/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/al/impl/adview/u;->dismiss()V

    return-void
.end method
