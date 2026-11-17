.class Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;
.super Ljava/lang/Object;
.source "VungleAdAdapter.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/VungleAdAdapter;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 2
    .param p1, "wasClicked"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$100(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$1;-><init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 2
    .param p1, "isAdPlayable"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$100(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$4;-><init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$100(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$2;-><init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$100(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$3;-><init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 2
    .param p1, "isCompletedView"    # Z
    .param p2, "watchedMillis"    # I
    .param p3, "videoDurationMillis"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/VungleAdAdapter;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/VungleAdAdapter;->access$100(Lcom/fusepowered/ads/adapters/VungleAdAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/ads/adapters/VungleAdAdapter$1$5;-><init>(Lcom/fusepowered/ads/adapters/VungleAdAdapter$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method
