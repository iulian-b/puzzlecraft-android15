.class public Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;
.super Landroid/widget/LinearLayout;
.source "MessageDialogBody.java"


# static fields
.field private static final ID_BODY_BUTTON:I = 0x424a19

.field private static final ID_BODY_TEXT:I = 0x424a17


# instance fields
.field private button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

.field private scroller:Landroid/widget/ScrollView;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 40
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .line 47
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/16 v10, 0x46

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x5

    .line 51
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    .line 52
    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 53
    new-instance v2, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .line 55
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 56
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->addView(Landroid/view/View;)V

    .line 57
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->addView(Landroid/view/View;)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->setOrientation(I)V

    .line 60
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const v3, 0x424a17

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 62
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v1, "textParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 65
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    sget-object v3, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 68
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 72
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    sget-object v3, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v2, v3}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)V

    .line 76
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v10, v6, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundPressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundDepressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setPressedTextColor(I)V

    .line 82
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setDepressedTextColor(I)V

    .line 83
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setFocusedTextColor(I)V

    .line 84
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v2, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    const v3, 0x424a19

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setId(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 139
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->release()V

    .line 143
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->removeAllViews()V

    .line 146
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setText()"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextColor()"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextSize()"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
