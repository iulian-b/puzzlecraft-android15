.class public Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;
.super Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;
.source "AddCalendarEntryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;,
        Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    }
.end annotation


# instance fields
.field private body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

.field private final onClose:Landroid/view/View$OnClickListener;

.field private userButtonListener:Landroid/view/View$OnClickListener;

.field private userCloseListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$1;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->onClose:Landroid/view/View$OnClickListener;

    .line 59
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 63
    new-instance v1, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, "title":Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;
    new-instance v2, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    .line 66
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->addView(Landroid/view/View;)V

    .line 67
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->addView(Landroid/view/View;)V

    .line 68
    sget-object v2, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setDialogBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 76
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v2, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string v2, "Confirm adding calendar entry"

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setTitle(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public addCalendars(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;>;"
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->addCalendars(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method public bridge synthetic dismiss()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onOrientationChange()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->onOrientationChange()V

    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setText(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setButtonText(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public bridge synthetic setDialogMaxHeight(I)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMaxHeight(I)V

    return-void
.end method

.method public bridge synthetic setDialogMaxWidth(I)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMaxWidth(I)V

    return-void
.end method

.method public bridge synthetic setDialogMinHeight(I)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMinHeight(I)V

    return-void
.end method

.method public bridge synthetic setDialogMinWidth(I)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMinWidth(I)V

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    .line 103
    return-void
.end method

.method public setOnCalendarClickedListener(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setOnCalendarClickedListener(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    .line 108
    return-void
.end method
