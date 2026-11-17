.class Lcom/fusepowered/nx/monetization/manager/DialogManager$1;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$1;->this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 101
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->reset()V

    .line 102
    return-void
.end method
