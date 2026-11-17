.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$4;
.super Ljava/lang/Object;
.source "PuzzleCraftFuseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->deactivateOffersUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$4;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$4;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)Lcom/chillingo/liboffers/OfferSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "FuseAPIActivity"

    const-string v1, "making offers invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$4;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)Lcom/chillingo/liboffers/OfferSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/liboffers/OfferSession;->deactivateUI()V

    .line 180
    :cond_0
    return-void
.end method
