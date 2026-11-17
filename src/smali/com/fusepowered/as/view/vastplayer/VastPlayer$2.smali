.class Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;
.super Ljava/lang/Object;
.source "VastPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 213
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 217
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$500(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$602(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    move-result-object v0

    const-string v1, "Could not play video: %d, %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onFailure(Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$800(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->getInlineAd()Lcom/fusepowered/as/model/vast/InLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/InLine;->getErrorUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 222
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$2;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$900(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperErrorUris()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 223
    return v5

    .line 219
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
