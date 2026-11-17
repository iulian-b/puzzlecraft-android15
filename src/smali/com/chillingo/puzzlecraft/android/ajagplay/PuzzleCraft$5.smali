.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->checkBillingService()V
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
    .line 169
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 173
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5$1;

    invoke-direct {v2, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5$1;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->queryInventoryAsync(ZLcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$QueryInventoryFinishedListener;)V

    .line 193
    return-void
.end method
