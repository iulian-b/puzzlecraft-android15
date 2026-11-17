.class Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x1

    .line 794
    move-object v1, p1

    .line 795
    .local v1, "mPlayer":Landroid/media/MediaPlayer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomVideoView Error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomVideoView What Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 797
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_CANNOT_BE_PLAYED:Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "dialogBody":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 813
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2, v5}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2102(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    .line 814
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 815
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    new-instance v3, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2302(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    .line 816
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_MEDIA_PLAYER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 818
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    const-string v3, "Ok"

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setButtonText(Ljava/lang/String;)V

    .line 819
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    new-instance v3, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;

    invoke-direct {v3, p0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5$1;-><init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;Landroid/media/MediaPlayer;)V

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->setCancelable(Z)V

    .line 829
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/MessageDialog;->show()V

    .line 831
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 833
    return v5

    .line 801
    :sswitch_0
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_SERVER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    .line 802
    const-string v2, "CustomVideoView: MediaPlayer server died error."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :sswitch_1
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_UNKNOWN_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomVideoView: MediaPlayer unknown error. Error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
