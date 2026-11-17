.class Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;

.field final synthetic val$mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;->this$1:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;->this$1:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 825
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;->this$1:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2400(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 826
    return-void
.end method
