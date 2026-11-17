.class Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;
.super Ljava/lang/Object;
.source "VastPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/vastplayer/VastPlayer;->registerVideoPlayerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 296
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onTouch()V

    .line 297
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/LinearCreative;->getClickTrackingUris()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 298
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$900(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearClickTrackingUris()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 299
    new-instance v0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$5;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v2}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getClickThroughUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->execute()V

    .line 302
    :cond_0
    return v3
.end method
