.class public Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;
.super Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;
.source "MessageDialog.java"


# instance fields
.field private body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

.field private final onClose:Landroid/view/View$OnClickListener;

.field private title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

.field private userClickedOk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->userClickedOk:Z

    .line 36
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog$1;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->onClose:Landroid/view/View$OnClickListener;

    .line 47
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 51
    new-instance v1, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    .line 52
    new-instance v1, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    .line 54
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->addView(Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->addView(Landroid/view/View;)V

    .line 56
    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setDialogBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 64
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method


# virtual methods
.method public didUserClickOk()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->userClickedOk:Z

    return v0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->dismiss()V

    .line 130
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->release()V

    .line 131
    return-void
.end method

.method public bridge synthetic onOrientationChange()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->onOrientationChange()V

    return-void
.end method

.method release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->release()V

    .line 119
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->release()V

    .line 123
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    .line 125
    :cond_1
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->setButtonText(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void
.end method

.method public setDialogIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setIcon(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public bridge synthetic setDialogMaxHeight(I)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMaxHeight(I)V

    return-void
.end method

.method public bridge synthetic setDialogMaxWidth(I)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMaxWidth(I)V

    return-void
.end method

.method public bridge synthetic setDialogMinHeight(I)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMinHeight(I)V

    return-void
.end method

.method public bridge synthetic setDialogMinWidth(I)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->setDialogMinWidth(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->setText(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public setOnCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public setTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->setTextGravity(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setTitle(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setUserClickedOk(Z)V
    .locals 0
    .param p1, "didClick"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->userClickedOk:Z

    .line 136
    return-void
.end method

.method public showDialogIcon(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->title:Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->showIcon(Z)V

    .line 82
    :cond_0
    return-void
.end method
