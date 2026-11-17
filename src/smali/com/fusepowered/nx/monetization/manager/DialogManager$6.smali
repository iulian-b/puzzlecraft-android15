.class Lcom/fusepowered/nx/monetization/manager/DialogManager$6;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/manager/DialogManager;->showMessagesDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

.field final synthetic val$dialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$6;->this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$6;->val$dialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$6;->val$dialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 249
    return-void
.end method
