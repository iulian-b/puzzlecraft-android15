.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/VastWebView$VastWebViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastIcon;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$vastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastIcon;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->val$vastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    iput-object p3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVastWebViewClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 794
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->val$vastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastIcon;->getClickTrackingUris()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->val$context:Landroid/content/Context;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 801
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->val$vastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$9;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/fusepowered/m2/mobileads/VastIcon;->handleClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 802
    return-void
.end method
