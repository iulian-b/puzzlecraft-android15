.class public Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;
.super Lcom/fusepowered/m2/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewCountdownRunnable.java"


# instance fields
.field private final mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "videoViewController"    # Lcom/fusepowered/m2/mobileads/VastVideoViewController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 19
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    .line 24
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->updateCountdown()V

    .line 30
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->shouldBeInteractable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 33
    :cond_0
    return-void
.end method
