.class public Lcom/fusepowered/im/commons/metric/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;
    }
.end annotation


# instance fields
.field private a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/fusepowered/im/commons/metric/Storage;

.field private d:Lcom/fusepowered/im/commons/metric/Queuer;

.field private e:Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/fusepowered/im/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    .line 10
    const v0, 0x7ffffffe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    .line 11
    iput-object v1, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    .line 12
    new-instance v0, Lcom/fusepowered/im/commons/metric/Queuer;

    invoke-direct {v0}, Lcom/fusepowered/im/commons/metric/Queuer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->d:Lcom/fusepowered/im/commons/metric/Queuer;

    .line 74
    iput-object v1, p0, Lcom/fusepowered/im/commons/metric/Logger;->e:Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;

    .line 15
    new-instance v0, Lcom/fusepowered/im/commons/metric/Storage;

    iget-object v1, p0, Lcom/fusepowered/im/commons/metric/Logger;->d:Lcom/fusepowered/im/commons/metric/Queuer;

    iget-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/fusepowered/im/commons/metric/Storage;-><init>(ILjava/lang/String;Lcom/fusepowered/im/commons/metric/Queuer;Lcom/fusepowered/im/commons/metric/MetricConfigParams;)V

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/fusepowered/im/commons/metric/Storage$PreProcessor;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/fusepowered/im/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    .line 10
    const v0, 0x7ffffffe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    .line 11
    iput-object v1, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    .line 12
    new-instance v0, Lcom/fusepowered/im/commons/metric/Queuer;

    invoke-direct {v0}, Lcom/fusepowered/im/commons/metric/Queuer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->d:Lcom/fusepowered/im/commons/metric/Queuer;

    .line 74
    iput-object v1, p0, Lcom/fusepowered/im/commons/metric/Logger;->e:Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;

    .line 19
    new-instance v0, Lcom/fusepowered/im/commons/metric/Storage;

    iget-object v3, p0, Lcom/fusepowered/im/commons/metric/Logger;->d:Lcom/fusepowered/im/commons/metric/Queuer;

    iget-object v4, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/im/commons/metric/Storage;-><init>(ILjava/lang/String;Lcom/fusepowered/im/commons/metric/Queuer;Lcom/fusepowered/im/commons/metric/MetricConfigParams;Lcom/fusepowered/im/commons/metric/Storage$PreProcessor;)V

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/fusepowered/im/commons/metric/Logger;)Lcom/fusepowered/im/commons/metric/Storage;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/fusepowered/im/commons/metric/Storage;->saveToLatest()V

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 33
    return-void
.end method

.method public logEvent(Lcom/fusepowered/im/commons/metric/EventLog;)V
    .locals 6

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/fusepowered/im/commons/metric/Storage;->readNumberOfEventsAndTimeStampFromPersistent()V

    .line 38
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->e:Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->e:Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;

    invoke-interface {v0, p1}, Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;->dataCollected(Lcom/fusepowered/im/commons/metric/EventLog;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->d:Lcom/fusepowered/im/commons/metric/Queuer;

    invoke-virtual {v0, p1}, Lcom/fusepowered/im/commons/metric/Queuer;->log(Lcom/fusepowered/im/commons/metric/EventLog;)V

    .line 44
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->d:Lcom/fusepowered/im/commons/metric/Queuer;

    invoke-virtual {v0}, Lcom/fusepowered/im/commons/metric/Queuer;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/fusepowered/im/commons/metric/MetricConfigParams;->getDumpThreshhold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/fusepowered/im/commons/metric/Storage;->saveLocalCache()V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/fusepowered/im/commons/metric/Storage;->getEvents()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/fusepowered/im/commons/metric/MetricConfigParams;->getMaxInQueue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/fusepowered/im/commons/metric/Storage;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/fusepowered/im/commons/metric/MetricConfigParams;->getNextRetryInterval()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/im/commons/metric/Logger$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/im/commons/metric/Logger$1;-><init>(Lcom/fusepowered/im/commons/metric/Logger;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    :cond_3
    return-void
.end method

.method public setCallback(Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fusepowered/im/commons/metric/Logger;->e:Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;

    .line 78
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    invoke-virtual {v0, p1}, Lcom/fusepowered/im/commons/metric/Storage;->setCallback(Lcom/fusepowered/im/commons/metric/Logger$MetricsCallback;)V

    .line 79
    return-void
.end method

.method public setMetricConfigParams(Lcom/fusepowered/im/commons/metric/MetricConfigParams;)V
    .locals 1

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    .line 25
    iget-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->c:Lcom/fusepowered/im/commons/metric/Storage;

    iput-object p1, v0, Lcom/fusepowered/im/commons/metric/Storage;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    .line 27
    :cond_0
    return-void
.end method

.method public startNewSample()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    .line 65
    iget-object v2, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/im/commons/metric/Logger;->a:Lcom/fusepowered/im/commons/metric/MetricConfigParams;

    invoke-virtual {v3}, Lcom/fusepowered/im/commons/metric/MetricConfigParams;->getSamplingFactor()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/im/commons/metric/Logger;->b:Ljava/lang/Integer;

    .line 67
    const/4 v0, 0x1

    monitor-exit v1

    .line 70
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
