.class public Lcom/fusepowered/m2/mobileads/VastManager;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;
    }
.end annotation


# instance fields
.field private mScreenArea:I

.field private mScreenAspectRatio:D

.field private mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVastXmlManagerAggregator:Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/VastManager;->initializeScreenDimensions(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/mobileads/VastManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastManager;
    .param p1, "x1"    # Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/VastManager;->updateDiskMediaFileUrl(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/mobileads/VastManager;)Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/mobileads/VastManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    return-object v0
.end method

.method private initializeScreenDimensions(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    const-string v5, "context cannot be null"

    invoke-static {p1, v5}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 151
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 152
    .local v3, "x":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 155
    .local v4, "y":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 156
    .local v2, "screenWidth":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 157
    .local v1, "screenHeight":I
    int-to-double v6, v2

    int-to-double v8, v1

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mScreenAspectRatio:D

    .line 158
    mul-int v5, v2, v1

    iput v5, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mScreenArea:I

    .line 159
    return-void
.end method

.method private updateDiskMediaFileUrl(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)Z
    .locals 3
    .param p1, "vastVideoConfiguration"    # Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    const-string v2, "vastVideoConfiguration cannot be null"

    invoke-static {p1, v2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "networkMediaFileUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/m2/common/CacheService;->containsKeyDiskCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-static {v1}, Lcom/fusepowered/m2/common/CacheService;->getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "filePathDiskCache":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->setDiskMediaFileUrl(Ljava/lang/String;)V

    .line 142
    const/4 v2, 0x1

    .line 144
    .end local v0    # "filePathDiskCache":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;->cancel(Z)Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;

    .line 82
    :cond_0
    return-void
.end method

.method getScreenArea()I
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mScreenArea:I

    return v0
.end method

.method getScreenAspectRatio()D
    .locals 2
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mScreenAspectRatio:D

    return-wide v0
.end method

.method public onAggregationComplete(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V
    .locals 6
    .param p1, "vastVideoConfiguration"    # Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 87
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    if-nez p1, :cond_1

    .line 93
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    invoke-interface {v2, v5}, Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    .line 124
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/VastManager;->updateDiskMediaFileUrl(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    invoke-interface {v2, p1}, Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    goto :goto_0

    .line 102
    :cond_2
    new-instance v1, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;

    new-instance v2, Lcom/fusepowered/m2/mobileads/VastManager$1;

    invoke-direct {v2, p0, p1}, Lcom/fusepowered/m2/mobileads/VastManager$1;-><init>(Lcom/fusepowered/m2/mobileads/VastManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    invoke-direct {v1, v2}, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)V

    .line 116
    .local v1, "vastVideoDownloadTask":Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m2/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to download vast video"

    invoke-static {v2, v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    invoke-interface {v2, v5}, Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    goto :goto_0
.end method

.method public prepareVastVideoConfiguration(Ljava/lang/String;Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;Landroid/content/Context;)V
    .locals 7
    .param p1, "vastXml"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "vastManagerListener"    # Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    const-string v0, "vastManagerListener cannot be null"

    invoke-static {p2, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v0, "context cannot be null"

    invoke-static {p3, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;

    if-nez v0, :cond_0

    .line 61
    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    .line 62
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;

    iget-wide v2, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mScreenAspectRatio:D

    iget v4, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mScreenArea:I

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;-><init>(Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/fusepowered/m2/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v6

    .line 68
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Failed to aggregate vast xml"

    invoke-static {v0, v6}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager;->mVastManagerListener:Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    goto :goto_0
.end method
