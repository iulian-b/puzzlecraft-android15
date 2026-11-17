.class Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;
.super Ljava/lang/Object;
.source "VastPlayer.java"

# interfaces
.implements Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/vastplayer/VastPlayer;->configureVideoView()V
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
    .line 138
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVastVideoViewSizeChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    invoke-static {}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current creative is null.  Returning..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getSupplement()Lcom/fusepowered/as/model/vast/Supplement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getSupplement()Lcom/fusepowered/as/model/vast/Supplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Supplement;->getBanner()Lcom/fusepowered/as/model/vast/Banner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$000(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getSupplement()Lcom/fusepowered/as/model/vast/Supplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Supplement;->getBanner()Lcom/fusepowered/as/model/vast/Banner;

    move-result-object v0

    .line 151
    const-string v1, "text/html"

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Banner;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1, v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$200(Lcom/fusepowered/as/view/vastplayer/VastPlayer;Lcom/fusepowered/as/model/vast/Banner;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$300(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, p2

    const v3, 0x3f2aaaab

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    iget-object v1, p0, Lcom/fusepowered/as/view/vastplayer/VastPlayer$1;->this$0:Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    invoke-static {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->access$400(Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
