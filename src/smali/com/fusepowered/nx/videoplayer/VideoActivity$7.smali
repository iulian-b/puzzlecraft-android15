.class Lcom/fusepowered/nx/videoplayer/VideoActivity$7;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/videoplayer/VideoActivity;->updateCountdownTimer(Landroid/widget/TextView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

.field final synthetic val$messageFormat:Ljava/lang/String;

.field final synthetic val$seconds:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    iput-object p2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$textView:Landroid/widget/TextView;

    iput p3, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$seconds:I

    iput-object p4, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$messageFormat:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$textView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$seconds:I

    if-gez v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$textView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-static {v2}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->access$300(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->log(Ljava/lang/Exception;)V

    goto :goto_0

    .line 378
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    .line 381
    .local v0, "countdownMessage":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$messageFormat:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    .line 383
    :try_start_2
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$messageFormat:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$seconds:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/IllegalFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 390
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 391
    :try_start_3
    const-string v0, ""

    .line 394
    :cond_4
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 396
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 397
    iget-object v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;->val$textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 385
    :catch_1
    move-exception v2

    goto :goto_1
.end method
