.class Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$4;
.super Ljava/lang/Object;
.source "MoPubAdAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->setOnClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$4;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->access$200(Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;)Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$4;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-static {v1}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->access$200(Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;)Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 509
    :cond_0
    return-void
.end method
