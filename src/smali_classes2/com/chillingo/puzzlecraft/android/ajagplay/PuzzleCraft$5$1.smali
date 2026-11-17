.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5$1;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5$1;->this$1:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;)V
    .locals 9
    .param p1, "result"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    .param p2, "inv"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;

    .prologue
    .line 176
    iget-object v4, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5$1;->this$1:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;

    iget-object v4, v4, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-virtual {v4}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "knownSKU":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 179
    .local v2, "sku":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5$1;->this$1:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;

    iget-object v7, v7, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-virtual {v7}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "skuWithPackageName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    const-string v6, "PuzzleCraftAndroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "already purchased "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p2, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Inventory;->getPurchase(Ljava/lang/String;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;

    move-result-object v1

    .line 183
    .local v1, "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    if-eqz v1, :cond_0

    .line 184
    iget-object v6, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5$1;->this$1:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;

    iget-object v6, v6, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v6, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$200(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 178
    .end local v1    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "skuWithPackageName":Ljava/lang/String;
    :cond_1
    const-string v4, "PuzzleCraftAndroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inventory error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->getResponse()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    return-void
.end method
