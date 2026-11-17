.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$11;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$11;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;
    .param p2, "info"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$11;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 536
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "billing helper is null during purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "purchase payload correct starting consumption of purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$11;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0, p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$200(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 543
    if-eqz p2, :cond_0

    .line 544
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$11;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0, p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$200(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    goto :goto_0
.end method
