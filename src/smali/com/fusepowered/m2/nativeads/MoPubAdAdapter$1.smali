.class Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$1;
.super Ljava/lang/Object;
.source "MoPubAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;-><init>(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;Landroid/widget/Adapter;Lcom/fusepowered/m2/nativeads/VisibilityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
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
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "invisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-static {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->access$000(Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;Ljava/util/List;)V

    .line 105
    return-void
.end method
