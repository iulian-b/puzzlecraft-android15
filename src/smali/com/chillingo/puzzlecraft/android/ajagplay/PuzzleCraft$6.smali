.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

.field final synthetic val$devPayload:Ljava/lang/String;

.field final synthetic val$productID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    iput-object p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->val$productID:Ljava/lang/String;

    iput-object p3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->val$devPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 202
    const-string v0, "PuzzleCraftAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->val$productID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->val$devPayload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$300(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->val$devPayload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$402(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 206
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    iget-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->val$productID:Ljava/lang/String;

    const/16 v3, 0x2712

    iget-object v4, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    iget-object v4, v4, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->purchaseFinishedListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;->val$devPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method
