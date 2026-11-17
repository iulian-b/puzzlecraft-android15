.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;->addCloseButtonWidget(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 568
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$200(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$300(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I

    move-result v0

    .line 573
    .local v0, "currentPosition":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 574
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getCloseTrackers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v4}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v6, v2, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 581
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getSkipTrackers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v4}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v6, v2, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 588
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 590
    :cond_0
    return v5

    .line 571
    .end local v0    # "currentPosition":I
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$5;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .restart local v0    # "currentPosition":I
    goto :goto_0
.end method
