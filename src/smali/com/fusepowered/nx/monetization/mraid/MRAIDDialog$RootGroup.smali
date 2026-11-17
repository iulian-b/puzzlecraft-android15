.class Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;
.super Landroid/view/ViewGroup;
.source "MRAIDDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 196
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 192
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 187
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 188
    invoke-direct {p0, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->getMeasuredWidth()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->getMeasuredHeight()I

    move-result v2

    .line 202
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 205
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 209
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 211
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 212
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 211
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 213
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$RootGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 217
    return-void
.end method
