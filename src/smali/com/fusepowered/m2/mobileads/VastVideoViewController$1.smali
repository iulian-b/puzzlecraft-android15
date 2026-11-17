.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
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
    .line 146
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$000(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getClickTrackers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$200(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$300(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v4}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 157
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->handleClick(Ljava/lang/String;)V

    .line 159
    :cond_0
    return v5

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method
