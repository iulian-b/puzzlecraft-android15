.class Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;
.super Landroid/widget/LinearLayout;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    .line 213
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->setWeightSum(F)V

    .line 216
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog.DialogContent: Unexpected exception caught in DialogContent()"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v11, 0x3f666666    # 0.9f

    .line 228
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 229
    .local v9, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 230
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 231
    .local v8, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 233
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 234
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v3, v10

    .line 235
    .local v3, "maxHeight":I
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v4, v10

    .line 236
    .local v4, "maxWidth":I
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10, v3, v4}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$000(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;II)V

    .line 238
    move v6, p1

    .line 239
    .local v6, "measuredWidth":I
    move v5, p2

    .line 241
    .local v5, "measuredHeight":I
    sparse-switch v9, :sswitch_data_0

    .line 259
    :cond_0
    :goto_0
    :sswitch_0
    sparse-switch v2, :sswitch_data_1

    .line 276
    :cond_1
    :goto_1
    :sswitch_1
    invoke-super {p0, v6, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 283
    .end local v1    # "height":I
    .end local v2    # "heightMode":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    .end local v5    # "measuredHeight":I
    .end local v6    # "measuredWidth":I
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "width":I
    .end local v9    # "widthMode":I
    :goto_2
    return-void

    .line 246
    .restart local v1    # "height":I
    .restart local v2    # "heightMode":I
    .restart local v3    # "maxHeight":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "measuredHeight":I
    .restart local v6    # "measuredWidth":I
    .restart local v7    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "width":I
    .restart local v9    # "widthMode":I
    :sswitch_2
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    if-lez v10, :cond_3

    .line 247
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    if-ge v10, v8, :cond_2

    .line 248
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    .line 249
    :cond_2
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$200(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    if-le v10, v8, :cond_0

    .line 250
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$200(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    .line 253
    :cond_3
    if-le v8, v4, :cond_0

    .line 254
    const/high16 v10, -0x80000000

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    .line 264
    :sswitch_3
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$300(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    if-lez v10, :cond_5

    .line 265
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$300(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    if-ge v10, v1, :cond_4

    .line 266
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$300(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1

    .line 267
    :cond_4
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$400(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    if-le v10, v1, :cond_1

    .line 268
    iget-object v10, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;

    invoke-static {v10}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;->access$400(Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog;)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1

    .line 270
    :cond_5
    if-le v1, v3, :cond_1

    .line 271
    const/high16 v10, -0x80000000

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .line 277
    .end local v1    # "height":I
    .end local v2    # "heightMode":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    .end local v5    # "measuredHeight":I
    .end local v6    # "measuredWidth":I
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "width":I
    .end local v9    # "widthMode":I
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "BaseDialog.DialogContent: Unexpected exception caught in onMeasure()"

    invoke-static {v10}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_2

    .line 241
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 259
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/BaseDialog$DialogContent;->removeAllViews()V

    .line 287
    return-void
.end method
