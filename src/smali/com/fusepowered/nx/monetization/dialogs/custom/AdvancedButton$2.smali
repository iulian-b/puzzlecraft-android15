.class Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;
.super Ljava/lang/Object;
.source "AdvancedButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->access$400(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->access$200(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->access$500(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->access$500(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 99
    :cond_1
    return-void
.end method
