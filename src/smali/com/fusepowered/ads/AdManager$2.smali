.class Lcom/fusepowered/ads/AdManager$2;
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
.method constructor <init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager$2;->this$0:Lcom/fusepowered/ads/AdManager;

    iput-object p2, p0, Lcom/fusepowered/ads/AdManager$2;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iput-object p3, p0, Lcom/fusepowered/ads/AdManager$2;->val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$2;->this$0:Lcom/fusepowered/ads/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/ads/AdManager;->access$202(Lcom/fusepowered/ads/AdManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 410
    const-string v0, "ACCEPTED"

    invoke-static {v0}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$2;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ads/DisplayRequest;->hasShownPreroll:Z

    .line 412
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$2;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0}, Lcom/fusepowered/ads/AdManager;->access$300(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$2;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdManager;->getCurrentAdZoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/AdManagerListener;->userAcceptedRewardedAd(I)V

    .line 413
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$2;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0}, Lcom/fusepowered/ads/AdManager;->access$500(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdManager$AdTrackingReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$2;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v1}, Lcom/fusepowered/ads/AdManager;->access$400(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdZone;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ads/AdZone;->rewardedObject:Lcom/fusepowered/RewardedObject;

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager$2;->val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;

    iget-object v3, p0, Lcom/fusepowered/ads/AdManager$2;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v3}, Lcom/fusepowered/ads/DisplayRequest;->getDurationInSeconds()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/fusepowered/ads/AdManager$AdTrackingReporter;->reportUserAcceptedRewardedAd(Lcom/fusepowered/RewardedObject;Lcom/fusepowered/ads/adapters/AdAdapter;F)V

    .line 414
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$2;->this$0:Lcom/fusepowered/ads/AdManager;

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$2;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    iget-object v2, p0, Lcom/fusepowered/ads/AdManager$2;->val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/ads/AdManager;->access$600(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;Lcom/fusepowered/ads/adapters/AdAdapter;)Z

    .line 415
    return-void
.end method
