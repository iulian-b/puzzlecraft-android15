.class public Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;
.super Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;
.source "StorePictureDialog.java"


# instance fields
.field private body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

.field private final onClose:Landroid/view/View$OnClickListener;

.field private userButtonListener:Landroid/view/View$OnClickListener;

.field private userCloseListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog$1;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->onClose:Landroid/view/View$OnClickListener;

    .line 57
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 61
    new-instance v1, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "title":Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;
    new-instance v2, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    .line 64
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->addView(Landroid/view/View;)V

    .line 65
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->addView(Landroid/view/View;)V

    .line 66
    sget-object v2, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->setDialogBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 74
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {v2, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const-string v2, "Confirm storing picture"

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogTitle;->setTitle(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    const-string v3, "You are requested to store a picture on the device\' SDCard. Do you wish to proceed?"

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;->setText(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    const-string v3, "Proceed"

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;->setButtonText(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public bridge synthetic dismiss()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onOrientationChange()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->onOrientationChange()V

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

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialogBody;->setImage(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    .line 91
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/StorePictureDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method
