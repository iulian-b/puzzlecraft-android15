.class public Lcom/fusepowered/ads/AdCheckRequest;
.super Ljava/lang/Object;
.source "AdCheckRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdCheckRequest"


# instance fields
.field private final adManager:Lcom/fusepowered/ads/AdManager;

.field private final callback:Lcom/fusepowered/util/FuseCallback;

.field private error:Lcom/fusepowered/util/FuseCheckAdError;

.field private final handler:Landroid/os/Handler;

.field initiatedTime:Ljava/util/Date;

.field private isPending:Z

.field private requestDuration:J

.field private final waitTimeMillis:J


# direct methods
.method public constructor <init>(Lcom/fusepowered/util/FuseCallback;JLandroid/os/Handler;Lcom/fusepowered/ads/AdManager;)V
    .locals 4
    .param p1, "callback"    # Lcom/fusepowered/util/FuseCallback;
    .param p2, "waitTimeMillis"    # J
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "adManager"    # Lcom/fusepowered/ads/AdManager;

    .prologue
    const-wide/16 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/AdCheckRequest;->isPending:Z

    .line 23
    sget-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_UNDEFINED:Lcom/fusepowered/util/FuseCheckAdError;

    iput-object v0, p0, Lcom/fusepowered/ads/AdCheckRequest;->error:Lcom/fusepowered/util/FuseCheckAdError;

    .line 24
    iput-wide v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->requestDuration:J

    .line 27
    iput-object p1, p0, Lcom/fusepowered/ads/AdCheckRequest;->callback:Lcom/fusepowered/util/FuseCallback;

    .line 28
    iput-wide p2, p0, Lcom/fusepowered/ads/AdCheckRequest;->waitTimeMillis:J

    .line 29
    iput-object p4, p0, Lcom/fusepowered/ads/AdCheckRequest;->handler:Landroid/os/Handler;

    .line 30
    iput-object p5, p0, Lcom/fusepowered/ads/AdCheckRequest;->adManager:Lcom/fusepowered/ads/AdManager;

    .line 31
    sget-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_UNDEFINED:Lcom/fusepowered/util/FuseCheckAdError;

    iput-object v0, p0, Lcom/fusepowered/ads/AdCheckRequest;->error:Lcom/fusepowered/util/FuseCheckAdError;

    .line 32
    iput-wide v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->requestDuration:J

    .line 33
    return-void
.end method

.method private onTimeout()V
    .locals 6

    .prologue
    .line 54
    :try_start_0
    iget-wide v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->waitTimeMillis:J

    iput-wide v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->requestDuration:J

    .line 55
    iget-object v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v2}, Lcom/fusepowered/ads/AdManager;->isAdAvailableWithError()Lcom/fusepowered/util/FuseCheckAdError;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->error:Lcom/fusepowered/util/FuseCheckAdError;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timed out after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/fusepowered/ads/AdCheckRequest;->waitTimeMillis:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->error:Lcom/fusepowered/util/FuseCheckAdError;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/fusepowered/ads/AdCheckRequest;->reportAdStatus(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 58
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 59
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "AdCheckRequest"

    const-string v3, "onTimeout Exception"

    invoke-static {v2, v3, v1}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private declared-synchronized reportAdStatus(ZLjava/lang/String;)V
    .locals 4
    .param p1, "available"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->isPending:Z

    if-eqz v2, :cond_2

    .line 109
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->isPending:Z

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reporting ad availability: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". With reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "AdCheckRequest"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->callback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->callback:Lcom/fusepowered/util/FuseCallback;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/fusepowered/util/FuseCallback;->adAvailabilityResponse(II)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/AdCheckRequest;->adManager:Lcom/fusepowered/ads/AdManager;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/fusepowered/ads/AdCheckRequest;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1, p0, p1}, Lcom/fusepowered/ads/AdManager;->onAdCheckRequestFinished(Lcom/fusepowered/ads/AdCheckRequest;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->initiatedTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fusepowered/ads/AdCheckRequest;->requestDuration:J

    .line 97
    sget-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_UNDEFINED:Lcom/fusepowered/util/FuseCheckAdError;

    iput-object v0, p0, Lcom/fusepowered/ads/AdCheckRequest;->error:Lcom/fusepowered/util/FuseCheckAdError;

    .line 98
    const/4 v0, 0x0

    const-string v1, "Aborted"

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/ads/AdCheckRequest;->reportAdStatus(ZLjava/lang/String;)V

    .line 99
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/fusepowered/ads/AdCheckRequest;->requestDuration:J

    return-wide v0
.end method

.method public getError()Lcom/fusepowered/util/FuseCheckAdError;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/ads/AdCheckRequest;->error:Lcom/fusepowered/util/FuseCheckAdError;

    return-object v0
.end method

.method public onAdAvailable()V
    .locals 6

    .prologue
    .line 41
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/fusepowered/ads/AdCheckRequest;->initiatedTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->requestDuration:J

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad became available after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fusepowered/ads/AdCheckRequest;->requestDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/fusepowered/ads/AdCheckRequest;->reportAdStatus(ZLjava/lang/String;)V

    .line 44
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/fusepowered/ads/AdCheckRequest;->onTimeout()V

    .line 125
    return-void
.end method

.method public start()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v3, p0, Lcom/fusepowered/ads/AdCheckRequest;->initiatedTime:Ljava/util/Date;

    if-nez v3, :cond_1

    .line 73
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/fusepowered/ads/AdCheckRequest;->initiatedTime:Ljava/util/Date;

    .line 74
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/fusepowered/ads/AdCheckRequest;->initiatedTime:Ljava/util/Date;

    .line 76
    iget-object v3, p0, Lcom/fusepowered/ads/AdCheckRequest;->adManager:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v3}, Lcom/fusepowered/ads/AdManager;->isAdAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v3, 0x1

    const-string v4, "Ad was already available"

    invoke-direct {p0, v3, v4}, Lcom/fusepowered/ads/AdCheckRequest;->reportAdStatus(ZLjava/lang/String;)V

    .line 86
    :goto_0
    return v1

    .line 80
    :cond_0
    const-string v1, "AdCheckRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad check started: Ad is not available. Max wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/fusepowered/ads/AdCheckRequest;->waitTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/fusepowered/ads/AdCheckRequest;->handler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/fusepowered/ads/AdCheckRequest;->waitTimeMillis:J

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AdCheckRequest"

    const-string v3, "start Exceptions"

    invoke-static {v1, v3, v0}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 86
    goto :goto_0

    .line 89
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Ad Check request can not be started more than once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
