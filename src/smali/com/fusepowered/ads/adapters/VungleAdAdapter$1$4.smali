.class Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;
.super Ljava/lang/Object;
.source "VungleAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->onAdPlayableChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

.field final synthetic val$isAdPlayable:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;Z)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iput-boolean p2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->val$isAdPlayable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->val$isAdPlayable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$200(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$202(Lcom/fusepowered/ads/adapters/VungleAdAdapter;Z)Z

    .line 115
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v1, v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 117
    :cond_0
    return-void
.end method
