.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/VastWebView$VastWebViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastCompanionAd;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$vastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastCompanionAd;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->val$vastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    iput-object p3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVastWebViewClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 743
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    const-string v1, "com.fusepowered.m2.action.interstitial.click"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->val$vastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$300(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->val$context:Landroid/content/Context;

    invoke-static {v0, v3, v1, v3, v2}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 751
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->val$vastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$7;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->handleClick(Landroid/content/Context;ILjava/lang/String;)V

    .line 752
    return-void
.end method
