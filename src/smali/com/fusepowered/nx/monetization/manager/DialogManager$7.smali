.class Lcom/fusepowered/nx/monetization/manager/DialogManager$7;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/DialogManager$7;->this$0:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 256
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->reset()V

    .line 257
    return-void
.end method
