.class Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "MoPubRecyclerAdapter.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/fusepowered/m2/nativeads/VisibilityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 72
    .local p1, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "invisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0, p1, p2}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->access$000(Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;Ljava/util/List;Ljava/util/List;)V

    .line 73
    return-void
.end method
