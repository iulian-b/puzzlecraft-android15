.class Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 44
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 47
    :cond_0
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 104
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 108
    :cond_0
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 77
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 138
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseInterstitial(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 68
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->clearCache()V

    .line 69
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->access$100(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseRewardedVideo(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 129
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->clearCache()V

    .line 130
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->access$100(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 131
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 145
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->isAnyViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->access$200(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)V

    goto :goto_0
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->isAnyViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->access$200(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;)V

    goto :goto_0
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 53
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-static {v0, p2}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->access$000(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 54
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 55
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 114
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-static {v0, p2}, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->access$000(Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 115
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 116
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 93
    return-void
.end method

.method public didPauseClickForConfirmation()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/chartboost/sdk/ChartboostDelegate;->didPauseClickForConfirmation()V

    .line 99
    return-void
.end method
