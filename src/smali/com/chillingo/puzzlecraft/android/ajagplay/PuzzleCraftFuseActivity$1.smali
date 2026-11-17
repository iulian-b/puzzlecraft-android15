.class Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$1;
.super Lcom/chillingo/puzzlecraft/android/ajagplay/FuseSDKListenerWrapper;
.source "PuzzleCraftFuseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->initializeAds()V
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
    .line 54
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$1;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/FuseSDKListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public rewardedAdCompleteWithObject(Lcom/fusepowered/RewardedInfo;)V
    .locals 2
    .param p1, "rewardedInfo"    # Lcom/fusepowered/RewardedInfo;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/fusepowered/RewardedInfo;->rewardItem:Ljava/lang/String;

    const-string v1, "Gold"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/fusepowered/RewardedInfo;->rewardAmount:I

    if-lez v0, :cond_0

    .line 65
    iget v0, p1, Lcom/fusepowered/RewardedInfo;->rewardAmount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->addCustomGold(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "100"

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->addCustomGold(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sessionStartReceived()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity$1;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;->access$000(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraftFuseActivity;)V

    .line 58
    return-void
.end method
