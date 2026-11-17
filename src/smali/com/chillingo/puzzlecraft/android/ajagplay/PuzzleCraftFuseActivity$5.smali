.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$5;
.super Ljava/lang/Object;
.source "PuzzleCraftFuseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->levelHasChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

.field final synthetic val$currentLevel:I


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$5;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    iput p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$5;->val$currentLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$5;->val$currentLevel:I

    invoke-static {v0}, Lcom/fusepowered/FuseSDK;->registerLevel(I)V

    .line 219
    return-void
.end method
