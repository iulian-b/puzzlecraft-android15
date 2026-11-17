.class Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;
.super Ljava/lang/Object;
.source "VastPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 278
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->COMPLETE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 283
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$900(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->COMPLETE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 284
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1502(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z

    .line 285
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onShowClose()V

    .line 286
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$4;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1600(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    .line 288
    return-void
.end method
