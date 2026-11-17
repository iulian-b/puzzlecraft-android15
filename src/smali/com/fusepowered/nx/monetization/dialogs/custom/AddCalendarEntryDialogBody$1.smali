.class Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;
.super Ljava/lang/Object;
.source "AddCalendarEntryDialogBody.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->access$000(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;)Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->access$000(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;)Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    invoke-interface {v1, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;->onClick(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 169
    :cond_0
    return-void
.end method
