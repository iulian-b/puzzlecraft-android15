.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$3;
.super Ljava/lang/Object;
.source "PuzzleCraftFuseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->activateOffersUI()V
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
    .line 160
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)Lcom/chillingo/liboffers/OfferSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "FuseAPIActivity"

    const-string v1, "making offers visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)Lcom/chillingo/liboffers/OfferSession;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    sget-object v2, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_TOP_RIGHT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    sget-object v3, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-interface {v0, v1, v2, v3}, Lcom/chillingo/liboffers/OfferSession;->activateUIOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    .line 168
    :cond_0
    return-void
.end method
