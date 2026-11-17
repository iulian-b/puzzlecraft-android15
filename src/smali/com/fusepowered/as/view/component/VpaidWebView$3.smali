.class Lcom/fusepowered/as/view/component/VpaidWebView$3;
.super Ljava/lang/Object;
.source "VpaidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/VpaidWebView;->startVideoTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

.field final synthetic val$self:Lcom/fusepowered/as/view/component/VpaidWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/VpaidWebView;Lcom/fusepowered/as/view/component/VpaidWebView;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    iput-object p2, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->val$self:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 551
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$000(Lcom/fusepowered/as/view/component/VpaidWebView;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v1}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$100(Lcom/fusepowered/as/view/component/VpaidWebView;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/VASTUtils;->calculateMillisecondsBeforeClosable(Lcom/fusepowered/as/model/ad/VASTProviderAd;I)Ljava/lang/Integer;

    move-result-object v1

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$200(Lcom/fusepowered/as/view/component/VpaidWebView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$300(Lcom/fusepowered/as/view/component/VpaidWebView;)Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 559
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->val$self:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exiting video timer loop"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    monitor-exit v2

    return-void

    .line 562
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$400(Lcom/fusepowered/as/view/component/VpaidWebView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 567
    :try_start_1
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$500(Lcom/fusepowered/as/view/component/VpaidWebView;)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v0

    .line 568
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 571
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$600(Lcom/fusepowered/as/view/component/VpaidWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0, v6}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$602(Lcom/fusepowered/as/view/component/VpaidWebView;Z)Z

    .line 576
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$700(Lcom/fusepowered/as/view/component/VpaidWebView;)Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;->onShowClose()V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$800(Lcom/fusepowered/as/view/component/VpaidWebView;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 581
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/TrackingEvent;

    .line 585
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getOffset()Lcom/fusepowered/as/utils/TimeSpan;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getOffset()Lcom/fusepowered/as/utils/TimeSpan;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/as/utils/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v4

    long-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 588
    new-instance v4, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v4, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvent;)V

    invoke-virtual {v4}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 589
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 562
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 568
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 596
    :cond_3
    const-wide/16 v2, 0x3e8

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 601
    :goto_2
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->val$self:Lcom/fusepowered/as/view/component/VpaidWebView;

    const-string v2, "aerserv_android.onGetAdDurationCallback(ad.getAdDuration());"

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$3;->val$self:Lcom/fusepowered/as/view/component/VpaidWebView;

    const-string v2, "aerserv_android.onGetAdRemainingTimeCallback(ad.getAdRemainingTime());"

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the video timer thread was interrupted"

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
