.class Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;
.super Ljava/lang/Object;
.source "VastPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/vastplayer/VastPlayer;->startVideoTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 497
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$900(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/view/component/VastVideoView;->getVideoDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/VASTUtils;->calculateMillisecondsBeforeClosable(Lcom/fusepowered/as/model/ad/VASTProviderAd;I)Ljava/lang/Integer;

    move-result-object v1

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$500(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$600(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    monitor-exit v2

    .line 558
    :goto_0
    return-void

    .line 507
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1800(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 513
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0, v9}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1802(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z

    .line 514
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onShowClose()V

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v2, v0

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VastVideoView;->getVideoDuration()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 521
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1900(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/fusepowered/as/view/component/VastVideoView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0, v9}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1902(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$2000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 531
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 533
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/TrackingEvent;

    .line 535
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getOffset()Lcom/fusepowered/as/utils/TimeSpan;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v4}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/as/view/component/VastVideoView;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getOffset()Lcom/fusepowered/as/utils/TimeSpan;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/as/utils/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_9

    :cond_5
    sget-object v4, Lcom/fusepowered/as/model/vast/EventType;->START:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getEventType()Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/as/model/vast/EventType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-gez v2, :cond_9

    :cond_6
    sget-object v4, Lcom/fusepowered/as/model/vast/EventType;->FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getEventType()Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/as/model/vast/EventType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x19

    if-ge v2, v4, :cond_9

    :cond_7
    sget-object v4, Lcom/fusepowered/as/model/vast/EventType;->MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getEventType()Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/as/model/vast/EventType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x32

    if-ge v2, v4, :cond_9

    :cond_8
    sget-object v4, Lcom/fusepowered/as/model/vast/EventType;->THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getEventType()Lcom/fusepowered/as/model/vast/EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/as/model/vast/EventType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x4b

    if-lt v2, v4, :cond_4

    .line 543
    :cond_9
    new-instance v4, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v4, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvent;)V

    invoke-virtual {v4}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 544
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 507
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 551
    :cond_a
    const-wide/16 v2, 0xfa

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 556
    :goto_2
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$6;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$2100(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 552
    :catch_0
    move-exception v0

    goto :goto_2
.end method
