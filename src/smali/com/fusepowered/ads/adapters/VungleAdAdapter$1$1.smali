.class Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;
.super Ljava/lang/Object;
.source "VungleAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->onAdEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

.field final synthetic val$wasClicked:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;Z)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iput-boolean p2, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;->val$wasClicked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$000(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    if-eqz v0, :cond_0

    .line 68
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;->val$wasClicked:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;->this$1:Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;

    iget-object v1, v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method
