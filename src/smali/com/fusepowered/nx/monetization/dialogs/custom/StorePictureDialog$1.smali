.class Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;
.super Ljava/lang/Object;
.source "StorePictureDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x424a19

    if-ne v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->access$000(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->access$000(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->dismiss()V

    .line 52
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x108a

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
