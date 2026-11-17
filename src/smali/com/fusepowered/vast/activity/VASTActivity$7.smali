.class Lcom/fusepowered/vast/activity/VASTActivity$7;
.super Ljava/util/TimerTask;
.source "VASTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/activity/VASTActivity;->startTrackingEventTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/vast/activity/VASTActivity;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$videoDuration:I


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/activity/VASTActivity;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    iput p2, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->val$videoDuration:I

    iput-object p3, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 819
    const/4 v3, 0x0

    .line 822
    .local v3, "percentage":I
    :try_start_0
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$700(Lcom/fusepowered/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 824
    .local v0, "curPos":I
    if-nez v0, :cond_1

    .line 878
    .end local v0    # "curPos":I
    :cond_0
    :goto_0
    return-void

    .line 827
    .restart local v0    # "curPos":I
    :cond_1
    mul-int/lit8 v5, v0, 0x64

    iget v6, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->val$videoDuration:I

    div-int v3, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$900(Lcom/fusepowered/vast/activity/VASTActivity;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x19

    if-lt v3, v5, :cond_3

    .line 835
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$900(Lcom/fusepowered/vast/activity/VASTActivity;)I

    move-result v5

    if-nez v5, :cond_5

    .line 837
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    sget-object v6, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->start:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v5, v6}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1000(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 838
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    .line 853
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$908(Lcom/fusepowered/vast/activity/VASTActivity;)I

    .line 859
    :cond_3
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1200(Lcom/fusepowered/vast/activity/VASTActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->val$events:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 860
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->val$events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/vast/model/VASTTracking;

    .line 861
    .local v4, "v":Lcom/fusepowered/vast/model/VASTTracking;
    invoke-virtual {v4}, Lcom/fusepowered/vast/model/VASTTracking;->isOffsetRelative()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 862
    int-to-long v6, v3

    invoke-virtual {v4}, Lcom/fusepowered/vast/model/VASTTracking;->getParsedOffset()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    invoke-virtual {v4}, Lcom/fusepowered/vast/model/VASTTracking;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 863
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5, v4}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1300(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/VASTTracking;)V

    .line 864
    invoke-virtual {v4, v10}, Lcom/fusepowered/vast/model/VASTTracking;->setConsumed(Z)V

    .line 866
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v5, v3}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto :goto_2

    .line 828
    .end local v0    # "curPos":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "v":Lcom/fusepowered/vast/model/VASTTracking;
    :catch_0
    move-exception v1

    .line 829
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/fusepowered/vast/activity/VASTActivity;->access$800()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaPlayer.getCurrentPosition exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Lcom/fusepowered/vast/activity/VASTActivity$7;->cancel()Z

    goto/16 :goto_0

    .line 839
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "curPos":I
    :cond_5
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$900(Lcom/fusepowered/vast/activity/VASTActivity;)I

    move-result v5

    if-ne v5, v10, :cond_6

    .line 841
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    sget-object v6, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v5, v6}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1000(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 842
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v6, 0x19

    invoke-interface {v5, v6}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto/16 :goto_1

    .line 843
    :cond_6
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$900(Lcom/fusepowered/vast/activity/VASTActivity;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 845
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    sget-object v6, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v5, v6}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1000(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 846
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v6, 0x32

    invoke-interface {v5, v6}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto/16 :goto_1

    .line 847
    :cond_7
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$900(Lcom/fusepowered/vast/activity/VASTActivity;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 849
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    sget-object v6, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v5, v6}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1000(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 850
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v6, 0x4b

    invoke-interface {v5, v6}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    .line 851
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1100(Lcom/fusepowered/vast/activity/VASTActivity;)V

    goto/16 :goto_1

    .line 869
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "v":Lcom/fusepowered/vast/model/VASTTracking;
    :cond_8
    int-to-long v6, v0

    invoke-virtual {v4}, Lcom/fusepowered/vast/model/VASTTracking;->getParsedOffset()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    invoke-virtual {v4}, Lcom/fusepowered/vast/model/VASTTracking;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 870
    iget-object v5, p0, Lcom/fusepowered/vast/activity/VASTActivity$7;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v5, v4}, Lcom/fusepowered/vast/activity/VASTActivity;->access$1300(Lcom/fusepowered/vast/activity/VASTActivity;Lcom/fusepowered/vast/model/VASTTracking;)V

    .line 871
    invoke-virtual {v4, v10}, Lcom/fusepowered/vast/model/VASTTracking;->setConsumed(Z)V

    .line 873
    sget-object v5, Lcom/fusepowered/vast/VASTPlayer;->currentPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v5, v5, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v5, v3}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto/16 :goto_2
.end method
