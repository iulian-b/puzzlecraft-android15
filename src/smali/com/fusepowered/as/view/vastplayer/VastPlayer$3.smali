.class Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;
.super Ljava/lang/Object;
.source "VastPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 228
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getSupplement()Lcom/fusepowered/as/model/vast/Supplement;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getSupplement()Lcom/fusepowered/as/model/vast/Supplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Supplement;->getBanner()Lcom/fusepowered/as/model/vast/Banner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getSupplement()Lcom/fusepowered/as/model/vast/Supplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Supplement;->getBanner()Lcom/fusepowered/as/model/vast/Banner;

    move-result-object v1

    .line 236
    const-string v0, "text/html"

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Banner;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 244
    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v2}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v2}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Banner;->getBannerUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1002(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Z)Z

    .line 259
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$700(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;->onPrepared()V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0, p1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1102(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 263
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1200(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 264
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    new-instance v2, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v2, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/component/VastVideoView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/VastVideoView;->setVideoDuration(I)V

    .line 273
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$3;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$1400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)V

    .line 275
    return-void
.end method
