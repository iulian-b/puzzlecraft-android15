.class Lcom/fusepowered/al/adview/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/adview/ALConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/adview/ALConfirmationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/adview/a;->a:Lcom/fusepowered/al/adview/ALConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/fusepowered/al/adview/a;->a:Lcom/fusepowered/al/adview/ALConfirmationActivity;

    invoke-virtual {v0}, Lcom/fusepowered/al/adview/ALConfirmationActivity;->finish()V

    return-void
.end method
