.class Lcom/fusepowered/nx/monetization/manager/DialogManager$3;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/manager/DialogManager;->showNoNetworkConnectivityDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;->this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;->val$dialog:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 124
    :try_start_0
    new-instance v1, Lcom/fusepowered/nx/monetization/manager/DialogManager$3$1;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/fusepowered/nx/monetization/manager/DialogManager$3$1;-><init>(Lcom/fusepowered/nx/monetization/manager/DialogManager$3;Landroid/content/Context;)V

    .line 131
    .local v1, "v":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$3;->val$activity:Landroid/app/Activity;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Unhandled exception"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
