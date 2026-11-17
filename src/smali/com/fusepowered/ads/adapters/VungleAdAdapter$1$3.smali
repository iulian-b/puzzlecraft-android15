.class Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;
.super Ljava/lang/Object;
.source "VungleAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->onAdUnavailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$000(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v1, v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$002(Lcom/fusepowered/ads/adapters/VungleAdAdapter;Z)Z

    goto :goto_0
.end method
