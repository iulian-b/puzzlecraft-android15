.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$12;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->processPurchase(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$12;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    iput-object p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$12;->val$sku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    .param p2, "result"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    .prologue
    .line 559
    invoke-virtual {p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "PuzzleCraftAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consumed SKU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$12;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$12;->val$sku:Ljava/lang/String;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->addGold(Ljava/lang/String;)V

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "purchase not consumed and will be retried"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
