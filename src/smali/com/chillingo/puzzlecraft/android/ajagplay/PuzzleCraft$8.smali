.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$8;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->createDialog(II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

.field final synthetic val$helpUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$8;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    iput-object p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$8;->val$helpUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$8;->val$helpUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 369
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$8;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    invoke-virtual {v1, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->startActivity(Landroid/content/Intent;)V

    .line 370
    return-void
.end method
