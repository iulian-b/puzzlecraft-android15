.class Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog$1;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 42
    return-void
.end method
