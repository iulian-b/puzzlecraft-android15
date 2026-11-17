.class Lcom/fusepowered/al/impl/adview/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/s;

.field final synthetic b:Lcom/fusepowered/al/impl/adview/v;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/v;Lcom/fusepowered/al/impl/adview/s;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/ab;->b:Lcom/fusepowered/al/impl/adview/v;

    iput-object p2, p0, Lcom/fusepowered/al/impl/adview/ab;->a:Lcom/fusepowered/al/impl/adview/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/ab;->a:Lcom/fusepowered/al/impl/adview/s;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/s;->performClick()Z

    return-void
.end method
