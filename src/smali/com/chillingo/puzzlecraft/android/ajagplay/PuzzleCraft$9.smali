.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->onResume()V
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
    .line 387
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$500(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->resumeBackgroundMusic()V

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$600(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setFocusable(Z)V

    .line 394
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$700(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/libterms/Terms;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$800(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-static {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$700(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/libterms/Terms;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/libterms/Terms;->intentForTermsDialogActivity()Landroid/content/Intent;

    move-result-object v0

    .line 396
    .local v0, "termsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-virtual {v1, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->startActivity(Landroid/content/Intent;)V

    .line 398
    .end local v0    # "termsIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
