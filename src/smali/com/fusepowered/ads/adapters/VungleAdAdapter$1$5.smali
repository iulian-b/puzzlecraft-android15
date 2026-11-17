.class Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;
.super Ljava/lang/Object;
.source "VungleAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->onVideoView(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

.field final synthetic val$isCompletedView:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;Z)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iput-boolean p2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->val$isCompletedView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$000(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->val$isCompletedView:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v1, v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 132
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-boolean v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v1, v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0, v2}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$202(Lcom/fusepowered/ads/adapters/VungleAdAdapter;Z)Z

    .line 137
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v1, v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0, v2}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$002(Lcom/fusepowered/ads/adapters/VungleAdAdapter;Z)Z

    goto :goto_0
.end method
