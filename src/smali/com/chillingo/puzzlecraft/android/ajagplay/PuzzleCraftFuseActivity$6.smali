.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$6;
.super Ljava/lang/Object;
.source "PuzzleCraftFuseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->goldValueHasChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

.field final synthetic val$currentGoldAmount:I


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$6;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    iput p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$6;->val$currentGoldAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x1

    iget v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$6;->val$currentGoldAmount:I

    invoke-static {v0, v1}, Lcom/fusepowered/FuseSDK;->registerCurrency(II)Z

    .line 229
    return-void
.end method
