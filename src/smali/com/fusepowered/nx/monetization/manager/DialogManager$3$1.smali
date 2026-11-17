.class Lcom/fusepowered/nx/monetization/manager/DialogManager$3$1;
.super Landroid/view/View;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/manager/DialogManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/nx/monetization/manager/DialogManager$3;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/manager/DialogManager$3;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fusepowered/nx/monetization/manager/DialogManager$3;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3$1;->this$1:Lcom/fusepowered/nx/monetization/manager/DialogManager$3;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3$1;->this$1:Lcom/fusepowered/nx/monetization/manager/DialogManager$3;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;->val$dialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 129
    return-void
.end method
