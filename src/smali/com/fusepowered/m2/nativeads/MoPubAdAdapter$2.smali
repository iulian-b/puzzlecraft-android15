.class Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$2;
.super Landroid/database/DataSetObserver;
.source "MoPubAdAdapter.java"


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
    .line 107
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->access$200(Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;)Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-static {v1}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->access$100(Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;)Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 111
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->notifyDataSetInvalidated()V

    .line 117
    return-void
.end method
