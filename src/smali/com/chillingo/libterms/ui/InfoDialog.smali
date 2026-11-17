.class public Lcom/chillingo/libterms/ui/InfoDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/chillingo/libterms/TermsUIConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customThemeId"    # I
    .param p3, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p3, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    .line 34
    iput-object p4, p0, Lcom/chillingo/libterms/ui/InfoDialog;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "info_dialog"

    const-string v2, "layout"

    invoke-virtual {v0, v1, v2, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/InfoDialog;->setContentView(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTheme()V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "chillingo_dialogAcceptButton"

    const-string v2, "id"

    iget-object v3, p0, Lcom/chillingo/libterms/ui/InfoDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    iget-object v1, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v1, v1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v1, v1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v1, v1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v2, v2, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/chillingo/libterms/utils/GraphicsUtils;->createStateListDrawableForButtonUsingResource(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/libterms/utils/GraphicsUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v0, v0, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "chillingo_dialogMessage"

    const-string v2, "id"

    iget-object v3, p0, Lcom/chillingo/libterms/ui/InfoDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v1, v1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v0, v0, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "chillingo_dialog"

    const-string v2, "id"

    iget-object v3, p0, Lcom/chillingo/libterms/ui/InfoDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/chillingo/libterms/ui/InfoDialog;->b:Lcom/chillingo/libterms/TermsUIConfig;

    iget-object v1, v1, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->applyTheme()V

    .line 44
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "chillingo_dialogMessage"

    const-string v2, "id"

    iget-object v3, p0, Lcom/chillingo/libterms/ui/InfoDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "chillingo_dialogAcceptButton"

    const-string v2, "id"

    iget-object v3, p0, Lcom/chillingo/libterms/ui/InfoDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v1, Lcom/chillingo/libterms/ui/InfoDialog$1;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/InfoDialog$1;-><init>(Lcom/chillingo/libterms/ui/InfoDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
