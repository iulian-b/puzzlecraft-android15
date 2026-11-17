.class Lcom/fusepowered/al/impl/adview/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/v;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/v;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/aa;->a:Lcom/fusepowered/al/impl/adview/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/aa;->a:Lcom/fusepowered/al/impl/adview/v;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/adview/v;->dismiss()V

    return-void
.end method
