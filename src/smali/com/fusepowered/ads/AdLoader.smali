.class public Lcom/fusepowered/ads/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/AdLoader$AdLoaderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdLoader"


# instance fields
.field private final adapterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private atLeastOneProviderStartedLoading:Z

.field private force:Z

.field private final handler:Landroid/os/Handler;

.field private lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

.field private final listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

.field private final maxWaitPerProviderMillis:J

.field private final providerQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final startTime:Ljava/util/Date;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;JZLcom/fusepowered/ads/AdLoader$AdLoaderListener;)V
    .locals 3
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "maxWaitPerProviderMillis"    # J
    .param p5, "force"    # Z
    .param p6, "listener"    # Lcom/fusepowered/ads/AdLoader$AdLoaderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;",
            "Landroid/os/Handler;",
            "JZ",
            "Lcom/fusepowered/ads/AdLoader$AdLoaderListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/adapters/AdAdapter;>;"
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "AdLoader"

    const-string v1, "Handler not connected to main thread.  Will probably cause problems"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/fusepowered/ads/AdLoader;->handler:Landroid/os/Handler;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/fusepowered/ads/AdLoader;->adapterList:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/fusepowered/ads/AdLoader;->providerQueue:Ljava/util/ArrayList;

    .line 39
    iput-boolean v2, p0, Lcom/fusepowered/ads/AdLoader;->stop:Z

    .line 40
    iput-wide p3, p0, Lcom/fusepowered/ads/AdLoader;->maxWaitPerProviderMillis:J

    .line 41
    iput-boolean p5, p0, Lcom/fusepowered/ads/AdLoader;->force:Z

    .line 42
    iput-boolean v2, p0, Lcom/fusepowered/ads/AdLoader;->atLeastOneProviderStartedLoading:Z

    .line 43
    iput-object p6, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    .line 44
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/AdLoader;->startTime:Ljava/util/Date;

    .line 46
    const-string v0, "AdLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created AdLoader with ordered adapters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->providerQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getAdapterList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/ads/AdLoader;->adapterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDurationInSeconds()F
    .locals 8

    .prologue
    .line 120
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 121
    .local v0, "currentTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/fusepowered/ads/AdLoader;->startTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 122
    .local v2, "differenceInMilliseconds":J
    long-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v1, v4, v5

    .line 123
    .local v1, "differenceInSeconds":F
    return v1
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/fusepowered/ads/AdLoader;->stop:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    iget-boolean v2, p0, Lcom/fusepowered/ads/AdLoader;->stop:Z

    if-eqz v2, :cond_1

    .line 64
    const-string v2, "AdLoader"

    const-string v3, "Stopped"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

    if-eqz v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/AdAdapter;->isAdAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

    iget-boolean v2, v2, Lcom/fusepowered/ads/adapters/AdAdapter;->isRTN:Z

    if-eqz v2, :cond_0

    .line 73
    :cond_2
    const-string v2, "AdLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider didn\'t load in time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/ads/AdLoader;->lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-virtual {v4}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    iget-object v3, p0, Lcom/fusepowered/ads/AdLoader;->lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-interface {v2, v3}, Lcom/fusepowered/ads/AdLoader$AdLoaderListener;->onAdProviderDidntLoadInTime(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 76
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fusepowered/ads/AdLoader;->lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->providerQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 80
    const-string v2, "AdLoader"

    const-string v3, "No more adapters to load"

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v2, p0, Lcom/fusepowered/ads/AdLoader;->atLeastOneProviderStartedLoading:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    if-eqz v2, :cond_4

    .line 82
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    invoke-interface {v2}, Lcom/fusepowered/ads/AdLoader$AdLoaderListener;->onNoProvidersCanLoad()V

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    if-eqz v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    invoke-interface {v2, v5}, Lcom/fusepowered/ads/AdLoader$AdLoaderListener;->onAdLoaderFinished(I)V

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdLoader;->stop()V

    goto :goto_0

    .line 94
    :cond_6
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->providerQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 95
    .local v0, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    iget-boolean v2, p0, Lcom/fusepowered/ads/AdLoader;->force:Z

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->isAdAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    const-string v2, "AdLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider has ad available and force loading is disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    if-eqz v2, :cond_7

    .line 98
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    invoke-interface {v2, v6}, Lcom/fusepowered/ads/AdLoader$AdLoaderListener;->onAdLoaderFinished(I)V

    .line 100
    :cond_7
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdLoader;->stop()V

    goto/16 :goto_0

    .line 104
    :cond_8
    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->loadAd()Z

    move-result v1

    .line 105
    .local v1, "startedLoading":Z
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    invoke-interface {v2, v0}, Lcom/fusepowered/ads/AdLoader$AdLoaderListener;->onAdProviderLoadRequested(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 107
    if-nez v1, :cond_9

    .line 108
    const-string v2, "AdLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad Provider not prepared to load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/fusepowered/ads/adapters/AdAdapter;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->listener:Lcom/fusepowered/ads/AdLoader$AdLoaderListener;

    invoke-interface {v2, v0}, Lcom/fusepowered/ads/AdLoader$AdLoaderListener;->onAdProviderNotReadyToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 110
    invoke-virtual {p0}, Lcom/fusepowered/ads/AdLoader;->run()V

    goto/16 :goto_0

    .line 112
    :cond_9
    iput-object v0, p0, Lcom/fusepowered/ads/AdLoader;->lastProviderToStartLoading:Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 113
    iput-boolean v6, p0, Lcom/fusepowered/ads/AdLoader;->atLeastOneProviderStartedLoading:Z

    .line 114
    const-string v2, "AdLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started loading ad for provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/fusepowered/ads/AdLoader;->handler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/fusepowered/ads/AdLoader;->maxWaitPerProviderMillis:J

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/ads/AdLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/AdLoader;->stop:Z

    .line 59
    return-void
.end method
