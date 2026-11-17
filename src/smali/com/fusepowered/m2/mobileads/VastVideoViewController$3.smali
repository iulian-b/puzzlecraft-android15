.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Landroid/widget/VideoView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->val$videoView:Landroid/widget/VideoView;

    iput-object p3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 442
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    .line 443
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 445
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v0, v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->videoCompleted(Z)V

    .line 446
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$202(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Z)Z

    .line 450
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1200(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1300(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCompleteTrackers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v4}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->val$videoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$800(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1400(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1500(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fusepowered/m2/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1600(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1700(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoCtaButtonWidget;->notifyVideoComplete()V

    .line 470
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1800(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1900(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1800(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$300(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->handleImpression(Landroid/content/Context;I)V

    .line 477
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$2000(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$2000(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
