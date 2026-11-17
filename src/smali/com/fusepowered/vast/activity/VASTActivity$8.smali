.class Lcom/fusepowered/vast/activity/VASTActivity$8;
.super Ljava/util/TimerTask;
.source "VASTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/activity/VASTActivity;->startVideoProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field maxAmountInList:I

.field final synthetic this$0:Lcom/fusepowered/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/activity/VASTActivity;)V
    .locals 1

    .prologue
    .line 897
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 898
    const/16 v0, 0x13

    iput v0, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->maxAmountInList:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 903
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v3}, Lcom/fusepowered/vast/activity/VASTActivity;->access$700(Lcom/fusepowered/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 939
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v3}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1400(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->maxAmountInList:I

    if-ne v3, v4, :cond_1

    .line 908
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v3}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1400(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 909
    .local v1, "firstPosition":I
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v3}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1400(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 911
    .local v2, "lastPosition":I
    if-le v2, v1, :cond_1

    .line 913
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v3}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1400(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 925
    .end local v1    # "firstPosition":I
    .end local v2    # "lastPosition":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v3}, Lcom/fusepowered/vast/activity/VASTActivity;->access$700(Lcom/fusepowered/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 927
    .local v0, "curPos":I
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    new-instance v4, Lcom/fusepowered/vast/activity/VASTActivity$8$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/vast/activity/VASTActivity$8$1;-><init>(Lcom/fusepowered/vast/activity/VASTActivity$8;)V

    invoke-virtual {v3, v4}, Lcom/fusepowered/vast/activity/VASTActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 933
    iget-object v3, p0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v3}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1400(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    .end local v0    # "curPos":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method
