.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$2;
.super Ljava/lang/Object;
.source "PuzzleCraft.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->promptVillageName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$2;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    iput-object p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "value":Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 144
    const-string v0, ""

    .line 145
    :cond_0
    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    return-void
.end method
