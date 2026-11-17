.class Lcom/fusepowered/al/impl/sdk/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/al;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/al;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->a(Lcom/fusepowered/al/impl/sdk/al;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->b(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->X:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->b(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->Y:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->b(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->Z:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/fusepowered/al/impl/sdk/an;

    invoke-direct {v2, p0}, Lcom/fusepowered/al/impl/sdk/an;-><init>(Lcom/fusepowered/al/impl/sdk/am;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/am;->a:Lcom/fusepowered/al/impl/sdk/al;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/al;->b(Lcom/fusepowered/al/impl/sdk/al;)Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->aa:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/fusepowered/al/impl/sdk/aq;

    invoke-direct {v2, p0}, Lcom/fusepowered/al/impl/sdk/aq;-><init>(Lcom/fusepowered/al/impl/sdk/am;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
