.class Lcom/fusepowered/m2/nativeads/ImpressionTracker;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;
    }
.end annotation


# static fields
.field private static final PERIOD:I = 0xfa


# instance fields
.field private final mPollHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPollingRunnable:Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPollingViews:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fusepowered/m2/nativeads/TimestampWrapper",
            "<",
            "Lcom/fusepowered/m2/nativeads/NativeResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedViews:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fusepowered/m2/nativeads/NativeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityChecker:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVisibilityTrackerListener:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;

    invoke-direct {v3}, Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;-><init>()V

    new-instance v4, Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-direct {v4, p1}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;Lcom/fusepowered/m2/nativeads/VisibilityTracker;Landroid/os/Handler;)V

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;Lcom/fusepowered/m2/nativeads/VisibilityTracker;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "visibilityChecker"    # Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "visibilityTracker"    # Lcom/fusepowered/m2/nativeads/VisibilityTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fusepowered/m2/nativeads/NativeResponse;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fusepowered/m2/nativeads/TimestampWrapper",
            "<",
            "Lcom/fusepowered/m2/nativeads/NativeResponse;",
            ">;>;",
            "Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;",
            "Lcom/fusepowered/m2/nativeads/VisibilityTracker;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "trackedViews":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lcom/fusepowered/m2/nativeads/NativeResponse;>;"
    .local p2, "pollingViews":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    .line 59
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    .line 60
    iput-object p3, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityChecker:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;

    .line 61
    iput-object p4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    .line 63
    new-instance v0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/ImpressionTracker$1;-><init>(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTrackerListener:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;

    .line 92
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTrackerListener:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->setVisibilityTrackerListener(Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;)V

    .line 94
    iput-object p5, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;-><init>(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollingRunnable:Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityChecker:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;

    return-object v0
.end method

.method private removePollingView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method


# virtual methods
.method addView(Landroid/view/View;Lcom/fusepowered/m2/nativeads/NativeResponse;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "nativeResponse"    # Lcom/fusepowered/m2/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 110
    invoke-virtual {p2}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getRecordedImpression()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/fusepowered/m2/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-virtual {p2}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getImpressionMinPercentageViewed()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method clear()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->clear()V

    .line 131
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    return-void
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->clear()V

    .line 136
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->destroy()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTrackerListener:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;

    .line 138
    return-void
.end method

.method getVisibilityTrackerListener()Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTrackerListener:Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;

    return-object v0
.end method

.method removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->removePollingView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->removeView(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method scheduleNextPoll()V
    .locals 4
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->mPollingRunnable:Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
