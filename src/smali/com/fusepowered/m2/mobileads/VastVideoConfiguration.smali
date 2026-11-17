.class public Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;
.super Ljava/lang/Object;
.source "VastVideoConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAbsoluteTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mClickThroughUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mClickTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompleteTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomCloseIconUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCustomCtaText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCustomForceOrientation:Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCustomSkipText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDiskMediaFileUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mFractionalTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpressionTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mIsForceOrientationSet:Z

.field private mNetworkMediaFileUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPauseTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mResumeTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipOffset:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSkipTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomForceOrientation:Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mFractionalTrackers:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mAbsoluteTrackers:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mPauseTrackers:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mResumeTrackers:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCompleteTrackers:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCloseTrackers:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mSkipTrackers:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mClickTrackers:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mErrorTrackers:Ljava/util/ArrayList;

    .line 57
    return-void
.end method


# virtual methods
.method public addAbsoluteTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "absoluteTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;>;"
    const-string v0, "absoluteTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public addClickTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "clickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mClickTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    return-void
.end method

.method public addCloseTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "closeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "closeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCloseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    return-void
.end method

.method public addCompleteTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "completeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "completeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCompleteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-void
.end method

.method public addErrorTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "errorTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mErrorTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    return-void
.end method

.method public addFractionalTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "fractionalTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;>;"
    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public addImpressionTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "impressionTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "impressionTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mImpressionTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-void
.end method

.method public addPauseTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "pauseTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "pauseTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mPauseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    return-void
.end method

.method public addResumeTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "resumeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "resumeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mResumeTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    return-void
.end method

.method public addSkipTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "skipTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "skipTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mSkipTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    return-void
.end method

.method public getAbsoluteTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mAbsoluteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mClickTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCloseTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCloseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCompleteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustomCloseIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomCloseIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomCtaText:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomForceOrientation()Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomForceOrientation:Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;

    return-object v0
.end method

.method public getCustomSkipText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomSkipText:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskMediaFileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mDiskMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mErrorTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFractionalTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mFractionalTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mImpressionTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mNetworkMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mPauseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResumeTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mResumeTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mSkipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mSkipTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVastCompanionAd()Lcom/fusepowered/m2/mobileads/VastCompanionAd;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    return-object v0
.end method

.method public getVastIcon()Lcom/fusepowered/m2/mobileads/VastIcon;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    return-object v0
.end method

.method public isCustomForceOrientationSet()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mIsForceOrientationSet:Z

    return v0
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickThroughUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mClickThroughUrl:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setCustomCloseIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "customCloseIconUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomCloseIconUrl:Ljava/lang/String;

    .line 173
    :cond_0
    return-void
.end method

.method public setCustomCtaText(Ljava/lang/String;)V
    .locals 0
    .param p1, "customCtaText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomCtaText:Ljava/lang/String;

    .line 161
    :cond_0
    return-void
.end method

.method public setCustomForceOrientation(Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;)V
    .locals 1
    .param p1, "customForceOrientation"    # Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    if-eqz p1, :cond_0

    sget-object v0, Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;

    if-eq p1, v0, :cond_0

    .line 177
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomForceOrientation:Lcom/fusepowered/m2/common/util/DeviceUtils$ForceOrientation;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mIsForceOrientationSet:Z

    .line 180
    :cond_0
    return-void
.end method

.method public setCustomSkipText(Ljava/lang/String;)V
    .locals 0
    .param p1, "customSkipText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mCustomSkipText:Ljava/lang/String;

    .line 167
    :cond_0
    return-void
.end method

.method public setDiskMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "diskMediaFileUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mDiskMediaFileUrl:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setNetworkMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkMediaFileUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 142
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipOffset"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mSkipOffset:Ljava/lang/String;

    .line 186
    :cond_0
    return-void
.end method

.method public setVastCompanionAd(Lcom/fusepowered/m2/mobileads/VastCompanionAd;)V
    .locals 0
    .param p1, "vastCompanionAd"    # Lcom/fusepowered/m2/mobileads/VastCompanionAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mVastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    .line 151
    return-void
.end method

.method public setVastIcon(Lcom/fusepowered/m2/mobileads/VastIcon;)V
    .locals 0
    .param p1, "vastIcon"    # Lcom/fusepowered/m2/mobileads/VastIcon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->mVastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    .line 155
    return-void
.end method
