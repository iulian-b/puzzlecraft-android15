.class public final Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MoPubRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final NATIVE_AD_VIEW_TYPE_BASE:I = -0x38


# instance fields
.field private mAdLoadedListener:Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStrategy:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mViewPositionMap:Ljava/util/WeakHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-static {}, Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adPositioning"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    new-instance v1, Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/fusepowered/m2/nativeads/VisibilityTracker;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adPositioning"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    new-instance v0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    new-instance v1, Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/fusepowered/m2/nativeads/VisibilityTracker;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/fusepowered/m2/nativeads/VisibilityTracker;)V
    .locals 2
    .param p1, "streamAdPlacer"    # Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "visibilityTracker"    # Lcom/fusepowered/m2/nativeads/VisibilityTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    sget-object v0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    .line 66
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 67
    iput-object p3, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    .line 68
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    new-instance v1, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$1;-><init>(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->setVisibilityTrackerListener(Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;)V

    .line 76
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->setHasStableIdsInternal(Z)V

    .line 78
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    .line 79
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    new-instance v1, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$2;-><init>(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->setAdLoadedListener(Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;)V

    .line 90
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 92
    new-instance v0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$3;-><init>(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 157
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->handleVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;)Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;)Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    return-object v0
.end method

.method public static computeScrollOffset(Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p0, "linearLayoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    if-nez p1, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 227
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 228
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private handleVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "invisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const v2, 0x7fffffff

    .line 541
    .local v2, "min":I
    const/4 v1, 0x0

    .line 542
    .local v1, "max":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 543
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 544
    .local v3, "pos":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 548
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 549
    goto :goto_0

    .line 550
    .end local v3    # "pos":Ljava/lang/Integer;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v2, v6}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->placeAdsInRange(II)V

    .line 551
    return-void
.end method

.method private setHasStableIdsInternal(Z)V
    .locals 0
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 557
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 558
    return-void
.end method


# virtual methods
.method public clearAds()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->clearAds()V

    .line 328
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 446
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->destroy()V

    .line 447
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->destroy()V

    .line 448
    return-void
.end method

.method public getAdjustedPosition(I)I
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 461
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    const-wide/16 v2, -0x1

    .line 470
    :goto_0
    return-wide v2

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 466
    .local v0, "adData":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 467
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    neg-int v1, v1

    int-to-long v2, v1

    goto :goto_0

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 426
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getAdViewType(I)I

    move-result v0

    .line 427
    .local v0, "type":I
    if-eqz v0, :cond_0

    .line 428
    add-int/lit8 v1, v0, -0x38

    .line 431
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getOriginalPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v0

    return v0
.end method

.method handleAdLoaded(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 524
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->notifyItemInserted(I)V

    .line 525
    return-void
.end method

.method handleAdRemoved(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    .line 533
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->notifyItemRemoved(I)V

    .line 534
    return-void
.end method

.method public isAd(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    return v0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/RequestParameters;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestParameters"    # Lcom/fusepowered/m2/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/RequestParameters;)V

    .line 218
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 163
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 164
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 411
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p2}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "adData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    check-cast v0, Lcom/fusepowered/m2/nativeads/NativeAdData;

    .end local v0    # "adData":Ljava/lang/Object;
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/fusepowered/m2/nativeads/NativeAdData;Landroid/view/View;)V

    .line 422
    :goto_0
    return-void

    .line 417
    .restart local v0    # "adData":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->addView(Landroid/view/View;I)V

    .line 421
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p2}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 395
    const/16 v1, -0x38

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getAdViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x38

    if-gt p2, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p2}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getAdRendererForViewType(I)Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;

    move-result-object v0

    .line 398
    .local v0, "adRenderer":Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;
    if-nez v0, :cond_0

    .line 399
    const-string v1, "No view binder was registered for ads in MoPubRecyclerAdapter."

    invoke-static {v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x0

    .line 406
    .end local v0    # "adRenderer":Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;
    :goto_0
    return-object v1

    .line 403
    .restart local v0    # "adRenderer":Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;
    :cond_0
    new-instance v1, Lcom/fusepowered/m2/nativeads/MoPubRecyclerViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 406
    .end local v0    # "adRenderer":Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 170
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 476
    instance-of v0, p1, Lcom/fusepowered/m2/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 477
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 481
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 486
    instance-of v0, p1, Lcom/fusepowered/m2/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 487
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 497
    instance-of v0, p1, Lcom/fusepowered/m2/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 498
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 508
    instance-of v0, p1, Lcom/fusepowered/m2/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 509
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 515
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public refreshAds(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->refreshAds(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/RequestParameters;)V

    .line 255
    return-void
.end method

.method public refreshAds(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/RequestParameters;)V
    .locals 14
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestParameters"    # Lcom/fusepowered/m2/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 268
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v12, :cond_0

    .line 269
    const-string v12, "This adapter is not attached to a RecyclerView and cannot be refreshed."

    invoke-static {v12}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 317
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 274
    .local v5, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-nez v5, :cond_1

    .line 275
    const-string v12, "Can\'t refresh ads when there is no layout manager on a RecyclerView."

    invoke-static {v12}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    instance-of v12, v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v12, :cond_5

    move-object v6, v5

    .line 283
    check-cast v6, Landroid/support/v7/widget/LinearLayoutManager;

    .line 284
    .local v6, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 285
    .local v2, "firstPosition":I
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 286
    .local v3, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v6, v3}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->computeScrollOffset(Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v10

    .line 289
    .local v10, "scrollOffset":I
    const/4 v12, 0x0

    add-int/lit8 v13, v2, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 290
    .local v11, "startOfRange":I
    :goto_1
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v11}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v12

    if-eqz v12, :cond_2

    if-lez v11, :cond_2

    .line 291
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->getItemCount()I

    move-result v4

    .line 296
    .local v4, "itemCount":I
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 297
    .local v1, "endOfRange":I
    :goto_2
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v12

    if-eqz v12, :cond_3

    add-int/lit8 v12, v4, -0x1

    if-ge v1, v12, :cond_3

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 301
    :cond_3
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v11}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v9

    .line 302
    .local v9, "originalStartOfRange":I
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v8

    .line 303
    .local v8, "originalEndOfRange":I
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 305
    .local v0, "endCount":I
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v8, v0}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 306
    iget-object v12, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v9}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    move-result v7

    .line 308
    .local v7, "numAdsRemoved":I
    if-lez v7, :cond_4

    .line 309
    sub-int v12, v2, v7

    invoke-virtual {v6, v12, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 312
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->loadAds(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/RequestParameters;)V

    goto :goto_0

    .line 314
    .end local v0    # "endCount":I
    .end local v1    # "endOfRange":I
    .end local v2    # "firstPosition":I
    .end local v3    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v4    # "itemCount":I
    .end local v6    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v7    # "numAdsRemoved":I
    .end local v8    # "originalEndOfRange":I
    .end local v9    # "originalStartOfRange":I
    .end local v10    # "scrollOffset":I
    .end local v11    # "startOfRange":I
    :cond_5
    const-string v12, "This LayoutManager can\'t be refreshed."

    invoke-static {v12}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerViewBinder(Lcom/fusepowered/m2/nativeads/ViewBinder;)V
    .locals 3
    .param p1, "viewBinder"    # Lcom/fusepowered/m2/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    new-instance v1, Lcom/fusepowered/m2/nativeads/MoPubNativeAdRenderer;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/nativeads/MoPubNativeAdRenderer;-><init>(Lcom/fusepowered/m2/nativeads/ViewBinder;)V

    const/16 v2, -0x37

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->registerAdRenderer(Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;I)V

    .line 193
    return-void
.end method

.method public setAdLoadedListener(Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;

    .line 186
    return-void
.end method

.method public setContentChangeStrategy(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    goto :goto_0
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->setHasStableIdsInternal(Z)V

    .line 439
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 440
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 441
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 442
    return-void
.end method
