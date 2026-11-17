.class Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/nativeads/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollingRunnable"
.end annotation


# instance fields
.field private final mRemovedViews:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/ImpressionTracker;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 166
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    invoke-static {v4}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->access$100(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 168
    .local v3, "view":Landroid/view/View;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m2/nativeads/TimestampWrapper;

    .line 171
    .local v2, "timestampWrapper":Lcom/fusepowered/m2/nativeads/TimestampWrapper;, "Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;"
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    invoke-static {v4}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->access$200(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;

    move-result-object v5

    iget-wide v6, v2, Lcom/fusepowered/m2/nativeads/TimestampWrapper;->mCreatedTimestamp:J

    iget-object v4, v2, Lcom/fusepowered/m2/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v4, Lcom/fusepowered/m2/nativeads/NativeResponse;

    invoke-virtual {v4}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getImpressionMinTimeViewed()I

    move-result v4

    invoke-virtual {v5, v6, v7, v4}, Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;->hasRequiredTimeElapsed(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, v2, Lcom/fusepowered/m2/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v4, Lcom/fusepowered/m2/nativeads/NativeResponse;

    invoke-virtual {v4, v3}, Lcom/fusepowered/m2/nativeads/NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 180
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;>;"
    .end local v2    # "timestampWrapper":Lcom/fusepowered/m2/nativeads/TimestampWrapper;, "Lcom/fusepowered/m2/nativeads/TimestampWrapper<Lcom/fusepowered/m2/nativeads/NativeResponse;>;"
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 184
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    invoke-virtual {v4, v3}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 186
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    invoke-static {v4}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->access$100(Lcom/fusepowered/m2/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/fusepowered/m2/nativeads/ImpressionTracker;

    invoke-virtual {v4}, Lcom/fusepowered/m2/nativeads/ImpressionTracker;->scheduleNextPoll()V

    .line 191
    :cond_3
    return-void
.end method
