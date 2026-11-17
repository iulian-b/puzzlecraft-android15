.class Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$3;
.super Ljava/lang/Object;
.source "MoPubAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/MoPubNativeAdLoadedListener;


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
    .line 120
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->handleAdLoaded(I)V

    .line 124
    return-void
.end method

.method public onAdRemoved(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubAdAdapter;->handleAdRemoved(I)V

    .line 129
    return-void
.end method
