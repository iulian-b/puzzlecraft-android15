.class Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "MoPubRecyclerAdapter.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;


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
    .line 79
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->handleAdLoaded(I)V

    .line 83
    return-void
.end method

.method public onAdRemoved(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubRecyclerAdapter;->handleAdRemoved(I)V

    .line 88
    return-void
.end method
