.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->onCreate(Landroid/os/Bundle;)V
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
    .line 250
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "PuzzleCraftAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while initializing billing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$302(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Z)Z

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "billing helper not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v0, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$302(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Z)Z

    goto :goto_0

    .line 263
    :cond_1
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "billing initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$302(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Z)Z

    goto :goto_0
.end method
