.class Lcom/fusepowered/m2/mobileads/VastManager$1;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastManager;->onAggregationComplete(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastManager;

.field final synthetic val$vastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastManager$1;->this$0:Lcom/fusepowered/m2/mobileads/VastManager;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastManager$1;->val$vastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager$1;->this$0:Lcom/fusepowered/m2/mobileads/VastManager;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastManager$1;->val$vastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mobileads/VastManager;->access$000(Lcom/fusepowered/m2/mobileads/VastManager;Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager$1;->this$0:Lcom/fusepowered/m2/mobileads/VastManager;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastManager;->access$100(Lcom/fusepowered/m2/mobileads/VastManager;)Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastManager$1;->val$vastVideoConfiguration:Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastManager$1;->this$0:Lcom/fusepowered/m2/mobileads/VastManager;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastManager;->access$100(Lcom/fusepowered/m2/mobileads/VastManager;)Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;)V

    goto :goto_0
.end method
