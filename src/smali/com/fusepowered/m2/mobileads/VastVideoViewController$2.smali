.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 423
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$400(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$302(Lcom/fusepowered/m2/mobileads/VastVideoViewController;I)I

    .line 430
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$500(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    .line 431
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$600(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V

    .line 432
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$800(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$700(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 433
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$900(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$700(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoRadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 434
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$2;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->access$1002(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Z)Z

    .line 435
    return-void
.end method
