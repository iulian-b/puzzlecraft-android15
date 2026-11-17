.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 483
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->retryMediaPlayer(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    :goto_0
    return v0

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    .line 487
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 488
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v2, v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->videoError(Z)V

    .line 489
    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v2, v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1202(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Z)Z

    .line 491
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$100(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoConfiguration;->getErrorTrackers()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/fusepowered/m2/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/fusepowered/m2/mobileads/VastErrorCode;

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v4}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$4;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v5}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    move v0, v1

    .line 499
    goto :goto_0
.end method
