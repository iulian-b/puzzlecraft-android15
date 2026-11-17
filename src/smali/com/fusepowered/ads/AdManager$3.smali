.class Lcom/fusepowered/ads/AdManager$3;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/AdManager;->internalDisplayAd(Lcom/fusepowered/ads/DisplayRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/AdManager;

.field final synthetic val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

.field final synthetic val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/ads/DisplayRequest;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    iput-object p2, p0, Lcom/fusepowered/ads/AdManager$3;->val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;

    iput-object p3, p0, Lcom/fusepowered/ads/AdManager$3;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 421
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0, v4}, Lcom/fusepowered/ads/AdManager;->access$202(Lcom/fusepowered/ads/AdManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 422
    const-string v0, "REJECTED"

    invoke-static {v0}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0}, Lcom/fusepowered/ads/AdManager;->access$300(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/AdManagerListener;->userDeclinedRewardedAd(I)V

    .line 424
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0}, Lcom/fusepowered/ads/AdManager;->access$300(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdManagerListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v2}, Lcom/fusepowered/ads/AdManager;->access$700(Lcom/fusepowered/ads/AdManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/ads/AdManagerListener;->adDidClose(ILjava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0}, Lcom/fusepowered/ads/AdManager;->access$500(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v1}, Lcom/fusepowered/ads/AdManager;->access$400(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdZone;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager$3;->val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;

    iget-object v3, p0, Lcom/fusepowered/ads/AdManager$3;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v3}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportUserDeclinedRewardedAd(Lcom/fusepowered/RewardedObject;Lcom/fusepowered/ads/adapters/AdAdapter;F)V

    .line 426
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$3;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0, v4}, Lcom/fusepowered/ads/AdManager;->access$802(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;)Lcom/fusepowered/ads/DisplayRequest;

    .line 427
    return-void
.end method
